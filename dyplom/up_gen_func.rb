require 'rubygems'
require 'yaml'
require './uniibrut'
require './genereator'
require './helper'
require 'faker'
def symbol_function
  select_false = [";","%","$","#","^","*","[","]"].shuffle.first
end

def reference_options_false(name)
array = ["add_index:#{name}, index:#{data_type_f}", "polymorphic:#{data_type_f}"].shuffle.first
end
def reference_options_true
array = ["polymorphic:#{[true,false].shuffle.first}, index: #{[true,false].shuffle.first}", "polymorphic:#{[true,false].shuffle.first}", "index: #{[true,false].shuffle.first}"].shuffle.first
end
def add_reference(name, table, array) 
  "\n\t\tadd_reference(:#{table}, :#{name}, #{array})"
end
def remove_reference(name, table, array) 
  "\n\t\tremove_reference(:#{table}, :#{name}, #{array})"
end
def rename_table(correct=true)
  table_name = (random_column_name).to_s
  rename_table_name = correct ? (random_false_column).to_s : table_name
  indicator = correct ?  "F": "T"
name = Faker::Lorem.words.first

 str = <<-END
 
#{indicator}
\\begin{verbatim}
  class CreateUsers < ActiveRecord::Migration
	def change
	  create_table #{table_name} do |t|
	    def self.up
 END
   # add columns
  column_names = []
  array_options = []
  
  number_columns = rand(4..6)
  
  number_columns.times do
    array = correct ? reference_options_false(name) : reference_options_true
    column_name = correct ? (random_false_column).to_s : (random_column_name).to_s
	str << add_reference(column_name, table_name, array) 
	column_names << column_name
	array_options << array
end
str << <<-END

 def self.down
END
	number_columns.times do
	column_name = correct ? " " : column_names.pop
	array = correct ? " " : array_options.pop
	str << remove_reference(column_name, table_name, array) 
  end	

str << <<-END

   end
  end 
end
\\end{verbatim}
END
end
def renameupdown
text = "Q\nSelect true migration\n"
res = []
res << rename_table(false)
3.times { res << rename_table }
File.open('migration3.tex', 'a') do |file| 
	file.puts text
	file.puts res.shuffle.join("\n")
end
end

#add_table
def drop_table(table)
    "\t\t def self.down\n\t\t\tdrop_table :#{table}\n\t\t end\n"
end
def column(hash, name)
  data_type = hash.keys.shuffle.first
  method = hash[data_type]
  rand_field = rand_mod(data_type) 
  "\t\t\tt.#{data_type} :#{name}, :default"  + "=>" +(send method).to_s + ", #{rand_field}\n   "
end
def updown(correct=true)
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
    column_name = correct ? (random_false_column).to_s : (random_column_name).to_s
	str << column(hash, column_name)
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
text = "Q\nSelect true migration\n"
res = []
res << updown(false)
3.times { res << updown }
File.open('migration3.tex', 'a') do |file| 
	file.puts text
	file.puts res.shuffle.join("\n")
end
end

####
#
#
#
#
#
#
#
##

#
#
#
#
def remove_stam_column_false(table)
false_answers = ["\n\t\t\tremove_timestamps :#{table}, :created_at\n\t\t\tremove_column :#{table}, :updated_at", "\n\t\t\tdelete_timestamps: #{table}" ].shuffle.first
end
def remove_stam_column_true(table)
"\n\t\t\tremove_column :#{table}, :created_at\n\t\t\tremove_column :#{table}, :updated_at"
end
def timestampsdown(correct=true)
  table_name = (random_column_name).to_s
  indicator = correct ?  "F": "T"
 str = <<-END
 
#{indicator}
\\begin{verbatim}
  class CreateUsers < ActiveRecord::Migration
	def change
	  create_table #{table_name} do |t|
	    def self.up
 END
   # add columns
  files_with_types = correct ? 'words/falsedatatype.yaml' : 'qq.yaml'
  hash = YAML::load(open(files_with_types))
  
  column_names = []
  number_columns = rand(4..6)
  
  number_columns.times do
    column_name = correct ? (random_false_column).to_s : (random_column_name).to_s
	str << column(hash, column_name)
	column_names << column_name
  end
  str << "\t\t\tt.timestamps\n\t\tdef self.down"
     str_stamp = correct ?  remove_stam_column_false(table_name): remove_stam_column_true(table_name)
	 str << "#{str_stamp}"
str << <<-END

   end
  end 
end
\\end{verbatim}
END
end
def timest
text = "Q\nSelect true migration\n"
res = []
res << timestampsdown(false)
3.times { res << timestampsdown}
File.open('migration3.tex', 'a') do |file| 
	file.puts text
	file.puts res.shuffle.join("\n")
end
end
timest