#encoding: UTF-8
require 'rubygems'
require 'yaml'
require './uniibrut'
require './genereator'
require './helper'

def symbol_function
select_false = [";","%","$","#","^","*","[","]"].shuffle.first
end

def column(hash, name)
  data_type = hash.keys.shuffle.first
  method = hash[data_type]
  rand_field = rand_mod(data_type) 
  "\t\t\tt.#{data_type} :#{name}, :default"  + "=>" +(send method).to_s + ", #{rand_field}\n   "
end

def index(table, name, correct=true)
  select_true = ":"
  select_cor = "["
  select_cor2 = "]"
  select_full = correct ? (symbol_function).to_s : select_true
  select_scob = correct ? (symbol_function).to_s : select_cor
  select_scob2 = correct ? (symbol_function).to_s : select_cor2
  "\t\t\tadd_index(:#{table}, #{select_scob}#{select_full}#{name}_id, :unique => true)\n"
end

def random_migration(correct=true)
  table_name = correct ? (random_false_column).to_s : (random_column_name).to_s
  indicator = correct ? "F" : "T"
  
  # beginning of migration
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
  
  # add indexes
  rand(1..number_columns).times do
	column_name = column_names.shuffle.pop
	str << index(table_name, column_name, correct)
  end	
	
  # end of migration
  str << <<-END
	     end
	  end 
    end
    \\end{verbatim}
  END
end

tema = "N\nActiveRecord Migration!!!"
text = "Q\nSelect true migration"
res = []
res << random_migration(false)
3.times { res << random_migration }

File.open('migration.tex', 'a') do |file| 
	file.puts tema 
	file.puts text
	file.puts res.shuffle.join("\n")
end

  tema = "N\nadd_index for search!!!
  "
  tema = File.open('migration2.tex', 'a'){ |file| file.puts  tema }
  1.times{
def add_index(correct=true)
  files_with_types = correct ? 'words/falsedatatype.yaml' : 'qq.yaml'
  hash = YAML::load(open(files_with_types))
  app = correct ? (random_false_column).to_s : (random_column_name).to_s
  indicator = correct ? "F" : "T"
  "\n#{indicator}\n\\begin{verbatim}\n class CreateUsers < ActiveRecord::Migration \n  def change \n    create_table #{app} do |t| \n      "+
	(0..rand(4..6)).map do |x|
	  data_type = hash.keys.shuffle.first
	  method = hash[data_type]
	  rand_field = rand_mod(data_type)
	  name = correct ? (random_false_column).to_s : (random_column_name).to_s
	  #вспомогательная фигня
	  select_true = ":"
	  select_cor = "["
	  select_cor2 = "]"
	  select_full = correct ? (symbol_function).to_s : (select_true).to_s
	  select_scob = correct ? (symbol_function).to_s : (select_cor).to_s
	  select_scob2 = correct ? (symbol_function).to_s : (select_cor2).to_s
  
  "t.#{data_type} :#{name}, :default"  + "=>" +(send method).to_s + ", #{rand_field}\n   "
  end.join("   ") + 
  "end \n  end \nend\n\\end{verbatim}"
  #строчка добавления,хер знает как её правльно дописать на вывод "add_index(:#{app}, #{select_scob}#{select_full}#{name}_id, :unique => true)"
end

#Мацумото - программирование на Ruby. rubyonrails.org  - guides

res = []
res << add_index(false)
3.times { res << add_index }
  text = "Q\nSelect true migration"
  text = File.open('migration2.tex', 'a'){ |file| file.puts  text }

file = File.open('migration2.tex', 'a'){ |file| file.puts res.shuffle.join("\n") }
}

