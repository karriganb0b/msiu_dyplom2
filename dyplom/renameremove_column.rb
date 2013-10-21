require 'rubygems'
require 'yaml'
require './uniibrut'
require './genereator'
require './helper'
require 'faker'
def addcolumn(hash,  name, table, data ) 
  "\t\t:#{table}, :#{name}, :#{data}\n   "
end
def add_reference(class_name)
  "\t\tadd_references :#{class_name}, index :#{["true","false"].shuffle.first}\n"
  end
def removecolumn(hash, name, table, data ) 
  "\t\tremove_column :#{table}, :#{name}, :#{data}\n   "
end



def renamecolumn(hash, name, table, new_column_name ) 
  "\t\trename_column :#{table}, :#{name}, :#{new_column_name}\n   "
end

def rename(correct=true)
    files_with_types = correct ? 'words/falsedatatype.yaml' : 'qq.yaml'
    hash = YAML::load(open(files_with_types))
  table_name = (random_column_name).to_s
  drop_table_name = correct ? (random_false_column).to_s : table_name
  indicator = correct ?  "F": "T"
  class_name = ["users","dogs","persons"].shuffle.first
  class_names = []
  class_names << class_name
str = <<-END
#{indicator}
\\begin{verbatim}
  class Create#{class_name.capitalize} < ActiveRecord::Migration
    def self.up	  
END
   # add columns
  column_names = []
  number_columns = rand(4..6)
  
  number_columns.times do
    data_type = hash.keys.shuffle.first
    column_name =  (random_column_name).to_s
	str << [addcolumn(hash, column_name, table_name, data_type), add_reference(class_names.join("\n").chop)].shuffle.first
	column_names << column_name
    
  end
  str << <<-END
   def self.down
  END
	number_columns.times do
	column_name = correct ? " " : column_names.pop
	new_column_name = correct ? random_false_column : "#{Faker::Lorem.words.first}_#{Faker::Lorem.words.first}"

	str << renamecolumn(hash, table_name, column_name, new_column_name)
  end	
    str << <<-END
	     end
	  end 
    end
    \\end{verbatim}
  END
end
def downrename
text = "\nQ\nSelect true migration\n"
res = []
res <<  rename(false)
3.times { res << rename }
File.open('migration3.tex', 'a') do |file| 
	file.puts text
	file.puts res.shuffle.join("\n")
end
end
downrename

