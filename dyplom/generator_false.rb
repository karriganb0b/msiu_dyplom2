#encoding: UTF-8
require 'rubygems'
require 'yaml'
require './uniibrut'
require './genereator'
require './helper'
require 'active_support/all'
require 'faker'

def number(digits)
  rand(digits ** 10 - 1).to_s.center(digits, rand(9).to_s)
 end
def symbol_function
  select_false = [";","%","$","#","^","*","[","]"].shuffle.first
end

def column(hash, name)
  data_type = hash.keys.shuffle.first
  method = hash[data_type]
  rand_field = rand_mod(data_type) 
	if data_type == "string"+
    t = "t.#{data_type} :#{name}, :default"  + " => " +(send method ).to_s + ", #{rand_field}\n   "
    t.gsub(/(:default => "[^\f\t\n\r]+), (array: true)/, '\\2')
  elsif data_type == "text"
    t = "t.#{data_type} :#{name}, :default"  + " => :" +(send method ).to_s + ", #{rand_field}\n   "
    t.gsub(/(:default => :[^\f\t\n\r]+), (array: true)/, '\\2')
  elsif data_type == "boolean"
    t = "t.#{data_type} :#{name}, :default"  + " => "+(send method ).to_s + "\n   "
  else
    t = "t.#{data_type} :#{name}, :default"  + " => "+(send method ).to_s + ", #{rand_field}\n   "
  	t.gsub(/(:default => [^\f\t\n\r]+), (array: true)/, '\\2')
  end
end

def index(table, name, correct=true)
  select_true = ":"
  select_cor = "["
  select_cor2 = "]"
  select_full = correct ?  select_true : (symbol_function).to_s
  select_scob = correct ?  select_cor : (symbol_function).to_s
  select_scob2 = correct ? select_cor2 : (symbol_function).to_s 
  

  "\tadd_index(:#{table}, #{select_scob}#{select_full}#{name}#{select_scob2}, :unique => #{[true,false].shuffle.first})\n"
end


def random_migration(correct=false , correct_index=true, app) 
  # beginning of migration
  str = <<-END
class Create#{app.camelize} < ActiveRecord::Migration
def change
	create_table :#{app} do |t|
END

  # add columns
  files_with_types = correct ?  'qq.yaml' : 'words/falsedatatype.yaml'
  hash = YAML::load(open(files_with_types))
  
  column_names = []

  number_columns = rand(4..6) 
  
  number_columns.times do
    column_name = correct ?  (random_column_name).to_s : (random_false_column).to_s
	str << column(hash, column_name)
	column_names << column_name
  end
  str << <<-END
	end
	END
  # add indexes
  array = []
  column_names = column_names.shuffle
  indnum = rand(number_columns) + 1
  i = 0
  while i < indnum
	x = rand(indnum - i) + 1
	i += x
	column_name = column_names[0...x].join(', :')
	column_names = column_names[x..-1]
	array << index(app, column_name, correct_index)
  end
  str << array.uniq.join(" ")
  str << array.uniq.join(" ")
  
  # end of migration
  str << <<-END
  end 
end
  END
end
=begin
def add_sbor_index
res = []
app = random_column_name
correct_indexes = true
res << random_migration(true, correct_indexes, app)
#3.times { res << random_migration(false, correct_indexes.pop) }

file = File.open("words/index_test/test_true/#test.rb", 'a'){ |file| file.puts res.shuffle.join("\n") }
end
=end
def add_index(correct=true, app)
  files_with_types = correct ? 'words/falsedatatype.yaml' : 'qq.yaml'
  hash = YAML::load(open(files_with_types))
  #indicator = correct ? "F" : "T"

  "\nclass Create#{app.camelize} < ActiveRecord::Migration \n  def change \n    create_table :#{app} do |t| \n      "+
	(0..rand(4..6)).map do |x|
	  data_type = hash.keys.shuffle.first
	  method = hash[data_type]
	  rand_field = rand_mod(data_type)

	  name = correct ? (random_false_column).to_s : (random_column_name).to_s
	if data_type == "string"+
    t = "t.#{data_type} :#{name}, :default"  + " => " +(send method ).to_s + ", #{rand_field}\n   "
    t.gsub(/(:default => "[^\f\t\n\r]+), (array: true)/, '\\2')
  elsif data_type == "text"
    t = "t.#{data_type} :#{name}, :default"  + " => :" +(send method ).to_s + ", #{rand_field}\n   "
    t.gsub(/(:default => :[^\f\t\n\r]+), (array: true)/, '\\2')
  elsif data_type == "boolean"
    t = "t.#{data_type} :#{name}, :default"  + " => "+(send method ).to_s + "\n   "
  else
    t = "t.#{data_type} :#{name}, :default"  + " => "+(send method ).to_s + ", #{rand_field}\n   "
  	t.gsub(/(:default => [^\f\t\n\r]+), (array: true)/, '\\2')
  end
  end.join("   ") + 
  "end\nend\nend"
end


