require 'rubygems'
require 'yaml'
require './uniibrut'
require './genereator'
require './helper'
require 'faker'
def drop_table(table)
    "\t\t def self.down\n\t\t\tdrop_table :#{table}\n\t\t end\n"
end
def addcolumn(data_type, name, table ) 
  "add_column :#{table}, :#{name}, :#{data_type}\n   "
end
def removecolumn(data_type, name, table ) 
  "remove_column :#{table}, :#{name}, :#{data_type}\n   "
end

def updown(correct=true)
  data_type = hash.keys.shuffle.first
  method = hash[data_type]
  table_name = (random_column_name).to_s
  drop_table_name = correct ? (random_false_column).to_s : table_name
  indicator = correct ?  "F": "T"
  str = <<-END
   #{indicator}
	 \\begin{verbatim}
   	  class CreateUsers < ActiveRecord::Migration
	    def change
	      create_table #{table_name} do |t|
   END
   # add columns
  files_with_types = correct ? 'words/falsedatatype.yaml' : 'qq.yaml'
  hash = YAML::load(open(files_with_types))
  
  column_names = []
  number_columns = rand(4..6)
  
  number_columns.times do
    column_name = correct ? " " : (random_column_name).to_s
	str << addcolumn(hash, column_name, table_name)
	column_names << column_name
  end
  str << drop_table(drop_table_name)
    str << <<-END
	     end
	  end 
    end
    \\end{verbatim}
  END
end
def upddown
res = []
res << updown(false)
3.times { res << updown }
  text = "Q\nSelect true migration"
  text = File.open('migration3.tex', 'a'){ |file| file.puts  text }

file = File.open('migration3.tex', 'a'){ |file| file.puts res.shuffle.join("\n") }
end