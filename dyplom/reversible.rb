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

def column(name, method, rand_field, data_type)

	if data_type == "string"+
    t = "t.#{data_type} :#{name}, :default"  + " => " +(method ).to_s + ", #{rand_field}\n   "
    t.gsub(/(:default => "[^\f\t\n\r]+), (array: true)/, '\\2')
  elsif data_type == "text"
    t = "t.#{data_type} :#{name}, :default"  + " => :" +(method ).to_s + ", #{rand_field}\n   "
    t.gsub(/(:default => :[^\f\t\n\r]+), (array: true)/, '\\2')
  elsif data_type == "boolean"
    t = "t.#{data_type} :#{name}, :default"  + " => "+(method ).to_s + "\n   "
  else
    t = "t.#{data_type} :#{name}, :default"  + " => "+(method ).to_s + ", #{rand_field}\n   "
  	t.gsub(/(:default => [^\f\t\n\r]+), (array: true)/, '\\2')
  end
end

def index(table, correct=true, default)
  "\t\tt.change_default :#{table},#{default}\n       end\n"
end
def change_default(table, correct=true, change_default)

  "\t\tt.change_default :#{table}, #{change_default}\n     end\n"
end
def change_column_up(table, name, data_type, correct = false)
"\t\tchange_column :#{table}, :#{name}, :#{data_type}\n      \n"
end
def change_column_down(table, name, data_type, correct = false)
"\t\tchange_column :#{table}, :#{name}, :#{data_type}\n       \n"
end
def change_column_null(table, name, null)
"\t\tchange_column_null :#{table}, :#{name}, #{null}\n"
end

def random_migration(correct=false , correct_index=true, app) 
  # beginning of migration
indicate = correct ? "F" : "T"	
str = <<-END
class Create#{app.camelize} < ActiveRecord::Migration
	 def change
	   create_table :#{app} do |t|
END

  # add columns
  files_with_types = correct ? 'words/falsedatatype.yaml' : 'qq.yaml'
  hash = YAML::load(open(files_with_types))
  column_names = []
  defaultes = []
	methodes = []
	data_types = []
	rand_fields = []
	test = []
  number_columns = rand(4..6) 

  number_columns.times do
	jk = hash.keys.shuffle
	data_type = jk.pop
  method = hash[data_type]
  rand_field = rand_mod2(data_type) 
	ins = send method

  column_name = correct ? (random_column_name).to_s : (random_column_name).to_s
	defaultes << ins
	data_types << data_type
   ik = column(column_name, ins, rand_field, data_type)
	str <<  ik
	test << ik
	column_names << column_name
	methodes << eval(method)
	
  end

	str << <<-END
		end
	END
  # add indexes
  array = []
	change_default = []
	change_column = []
	change_null_up = []
	change_null_down = []	
	1.times do
	new_type = hash.keys.shuffle.first
	column_name = column_names.pop
	column_names = column_names
	column_name2 = column_names.pop
	column_names = column_names
	column_name3 = column_names.pop
	column_name4 = column_names.pop
	finder2 = test.find_all{|x| x.include?(column_name3) == true}.join(" ")
	k2 = finder2.scan(/null: false|null: true/).join('')
	k3 = k2.gsub(/(null:+)/, '\\2')

	reverse_k = ["true", "false"].shuffle.first
	if k3 == " true" or k3 == " false"
	c_hash = {change_column_null(app, column_name3, k3) => change_column_null(app, column_name3, reverse_k)}
	meth = c_hash.keys.first
	c_meth = c_hash[meth]
	change_null_up << meth
	change_null_down << c_meth
	elsif k3.size == 0
	array << "\t\tt.belongs_to :#{[column_name3, column_name2, column_name].shuffle.first}, polymorphic: true\n"
	array
	change_default
	end
	
	defaulte = defaultes.pop
	defaultes = defaultes
	methode = methodes.pop
	methodes = methodes

finder = test.find_all{|x| x.include?(column_name2) == true}.join(" ")
finder = finder.scan(/integer|decimal|boolean|timestamp|string|date|time|time|text|float/).join(" ")



	array << index(column_name, column_name, defaulte)
	change_default << change_default(column_name, column_name2, methode)
	cu = correct ? change_column_up(app, column_name2, eval([ "random_str", "random_nubmer"].shuffle.first), false) : change_column_up(app, column_name2, new_type, true)
	change_default << cu
	cd = correct ? change_column_up(app, column_name2, eval([ "random_str", "random_nubmer"].shuffle.first), false) : change_column_up(app, column_name2, finder, true)
	array << cd

	arr = correct ? [" :#{random_column_name},"," :#{random_column_name},"," :#{random_column_name},"," :#{random_column_name},"].shuffle : [" :#{column_name},"," :#{column_name2},"," :#{column_name3},"," :#{column_name4},"].shuffle
	arr = arr[0..rand(1..3)].join(" ")
	
	arr = correct ? [" :#{random_column_name},"," :#{random_column_name},"," :#{random_column_name},"," :#{random_column_name},"].shuffle : [" :#{column_name},"," :#{column_name2},"," :#{column_name3},"," :#{column_name4},"].shuffle
  rem = correct ? "\t\tremove_columns :#{app}, #{arr[1..rand(1..4)].join("")}\n" : "\t\t\t\tremove_columns :#{app}, #{arr[1..rand(1..4)].join("")}\n"
   if rem[-2] == ","
	  rem[-2] = " "
	  change_null_down << rem
	 else
	  change_null_down << rem
   end
end

	tab = app
	
	str << <<-END
reversible do |dir|
  dir.up do
		change_table :#{app} do |t|
	END
  str << array.join(" ")
	str << change_null_up.join(" ")	

  str << <<-END
  dir.down do
		change_table :#{app} do |t|
  END
	str << change_default.join(" ")
	str << change_null_down.join(" ")
  
  # end of migration
  str << <<-END
	      end
	    end
    end 
  end
end
  END
end

