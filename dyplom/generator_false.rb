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
  if data_type == "string"
  t = "t.#{data_type} :#{name}, :default"  + " => " +(send method ).to_s + ", #{rand_field}\n   "
	t.gsub(/(:default => "[^\f\t\n\r]+), (array: false)/, '\\2')
	elsif data_type == "text"
	t = "t.#{data_type} :#{name}, :default"  + " => :" +(send method ).to_s + ", #{rand_field}\n   "
	t.gsub(/(:default => :[^\f\t\n\r]+), (array: false)/, '\\2')
  elsif data_type == "boolean"
  t = "t.#{data_type} :#{name}, :default"  + " => "+(send method ).to_s + "\n   "
  else
  t = "t.#{data_type} :#{name}, :default"  + " => "+(send method ).to_s + ", #{rand_field}\n   "
	t.gsub(/(:default => [^\f\t\n\r]+), (array: false)/, '\\2')
	end
end

def index(table, name, correct=true)
  select_true = ":"
  select_cor = "["
  select_cor2 = "]"
  select_full = correct ?  select_true : (symbol_function).to_s
  select_scob = correct ?  select_cor : (symbol_function).to_s
  select_scob2 = correct ? select_cor2 : (symbol_function).to_s 
  

  "\t\t\t\tadd_index(:#{table}, #{select_scob}#{select_full}#{name}_id#{select_scob2}, :unique => #{[true,false].shuffle.first})\n"
end


def random_migration(correct=false , correct_index=true)
  postgresql_column_name = YAML::load(open('words/columnname.yaml'))
  postgresql_column_name = postgresql_column_name.strip.split(',')
  postgresql_column_name_one = postgresql_column_name.compact.shuffle.first
  postgresql_column_name_two = "#{postgresql_column_name.compact.shuffle.first}s"
   app =  "#{postgresql_column_name_one + "_" + postgresql_column_name_two}"

 
  # beginning of migration
  str = <<-END
class Create#{app.camelize} < ActiveRecord::Migration
	 def change
	   create_table :#{app} do |t|
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
  
  # add indexes
  array = []
  column_names = column_names.shuffle
  indnum = rand(number_columns) + 1
  i = 0
  while i < indnum
    puts column_names.inspect 
	x = rand(indnum - i) + 1
	i += x
	column_name = column_names[0...x].join(', ')
	column_names = column_names[x..-1]
	array << index(app, column_name, correct_index)
  end
  str << array.uniq.join(" ")
  
  # end of migration
  str << <<-END
    end
  end 
end
  END
end
def add_sbor

res = []
correct_indexes = ([true]).shuffle
res << random_migration(false, correct_indexes.pop)
0.times { res << random_migration(false, correct_indexes.pop) }

file = File.open("words/index_test/test_true/#{number(10)}_create_users.rb", 'a'){ |file| file.puts res.shuffle.join("\n") }
end



def add_index(correct=true)
  postgresql_column_name = YAML::load(open('words/columnname.yaml'))
  postgresql_column_name = postgresql_column_name.strip.split(',')
  postgresql_column_name_one = postgresql_column_name.compact.shuffle.first
  postgresql_column_name_two = postgresql_column_name.compact.shuffle.first.pluralize 

  app =  "#{postgresql_column_name_one + "_" + postgresql_column_name_two}"
  files_with_types = correct ? 'words/falsedatatype.yaml' : 'qq.yaml'
  hash = YAML::load(open(files_with_types))
  indicator = correct ? "F" : "T"
  "class Create#{app.camelize} < ActiveRecord::Migration \n  def change \n    create_table :#{app} do |t| \n      "+
	(0..rand(4..6)).map do |x|
	  data_type = hash.keys.shuffle.first
	  method = hash[data_type]
	  rand_field = rand_mod(data_type)

	  name = correct ? (random_false_column).to_s : (random_column_name).to_s
	if data_type == "string"
    t = "t.#{data_type} :#{name}, :default"  + " => " +(send method ).to_s + ", #{rand_field}\n   "
    t.gsub(/(:default => "[^\f\t\n\r]+), (array: false)/, '\\2')
  elsif data_type == "text"
    t = "t.#{data_type} :#{name}, :default"  + " => :" +(send method ).to_s + ", #{rand_field}\n   "
    t.gsub(/(:default => :[^\f\t\n\r]+), (array: false)/, '\\2')
  elsif data_type == "boolean"
    t = "t.#{data_type} :#{name}, :default"  + " => "+(send method ).to_s + "\n   "
  else
    t = "t.#{data_type} :#{name}, :default"  + " => "+(send method ).to_s + ", #{rand_field}\n   "
  	t.gsub(/(:default => [^\f\t\n\r]+), (array: false)/, '\\2')
  end
  end.join("   ") + 
  "end\nend\nend"
end
#выбросить default .gsub(/, :default=> .+/,'')
#Мацумото - программирование на Ruby. rubyonrails.org  - guides
def migration
res = []
res << add_index(false)
0.times { res << add_index }
  text = File.open('migration2.tex', 'a'){ |file| file.puts  text }
  res 
  

file = File.open("words/test_migration/test_false/2_create_users.rb", 'a'){ |file| file.puts res.shuffle.join("\n") }
end
migration