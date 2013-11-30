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
  "\t\t\t\tt.change_default :#{table},#{default}\n       end\n"
end
def change_default(table, correct=true, change_default)

  "\t\t\t\tt.change_default :#{table},#{change_default}\n      end\n"
end
def change_column_up(table, name, data_type)
"\t\t\t\tt.change_column :#{table}, #{name}, #{data_type}\n       end\n"
end
def change_column_down(table, name, data_type)
"\t\t\t\tt.change_column :#{table}, #{name}, #{data_type}\n       end\n"
end
def change_column_null(table, name, rand_field)
"t\t\t\t\tchange_column_null :#{table},#{name},#{rand_field} \n      end\n"
end

def random_migration(correct=false , correct_index=true, app) 
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
  defaultes = []
	methodes = []
	data_types = []
	rand_fields = []
  number_columns = rand(4..6) 
  
  number_columns.times do
	data_type = hash.keys.shuffle.first
  method = hash[data_type]
  rand_field = rand_mod2(data_type) 
	ins = send method

  column_name = correct ? (random_false_column).to_s : (random_column_name).to_s
	defaultes << ins
	str << column(column_name, ins, rand_field, data_type)
	column_names << column_name
	methodes << eval(method)
	data_types << data_type
  end
  str << <<-END
	end
	END
  # add indexes
  array = []
	change_default = []
	change_column = []
	1.times do
	new_type = hash.keys.shuffle.first
	data_type = data_types.pop
	column_name = column_names.pop
	column_names = column_names
	column_name2 = column_names.pop
	defaulte = defaultes.pop
	methode = methodes.pop
	array << index(column_name, column_name, defaulte)
	change_default << change_default(column_name, column_name2, methode)
	change_default << change_column_down(app, column_name2, new_type)
	array << change_column_up(app, column_name2, data_type)
	
  end
	c_name = column_names.pop
	p_name = c_name.pluralize
	tab = app
	execute_hash = [" execute <<-SQL
          ALTER TABLE #{tab}
            ADD CONSTRAINT fk_#{app}_#{p_name}
            FOREIGN KEY (#{c_name}_id)
            REFERENCES (#{p_name}_(id)
        SQL" => 
				"        execute <<-SQL
          ALTER TABLE tab
            DROP FOREIGN KEY fk_#{app}_#{p_name}]
        SQL"]
				exec = execute_hash.key
	str << <<-END
		reversible do |dir|
      			dir.up do
						#{exec}
				change_table :role_descriptions do |t|
	END
  str << array.join(" ")

  str << <<-END
			dir.down do
			#{exec[execute_hash]}
				change_table :role_descriptions do |t|
  END
	str << change_default.join(" ")
  
  # end of migration
  str << <<-END
    end 
  end
end
  END
end
def add_sbor
app = random_column_name
res = []
correct_indexes = ([true]).shuffle
res << random_migration(false, correct_indexes.pop, app)
0.times {res << random_migration(false, correct_indexes.pop) }

file = File.open("words/test_migration/test_true/#{number(10)}_#{app}.rb", 'a'){ |file| file.puts res.shuffle.join("\n") }
end
1.times{
add_sbor}