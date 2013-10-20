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
  "\t\tt.#{data_type} :#{name}, :default"  + "=>" +(send method).to_s + ", #{rand_field}\n   "
end

def index(table, name, correct=true)
  select_true = ":"
  select_cor = "["
  select_cor2 = "]"
  select_full = correct ?  select_true : (symbol_function).to_s
  select_scob = correct ?  select_cor : (symbol_function).to_s
  select_scob2 = correct ? select_cor2 : (symbol_function).to_s 
  

  "\t\tadd_index(:#{table}, #{select_scob}#{select_full}#{name}_id#{select_scob2}, :unique => #{[true,false].shuffle.first})\n"
end


def random_migration(correct=false , correct_index=true)
  table_name = correct ? (random_column_name).to_s : (random_false_column).to_s
  
  indicator = correct_index ? "T" : "F"
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
	array << index(table_name, column_name, correct_index)
  end
  str << array.uniq.join(" ")
  
  # end of migration
  str << <<-END
    end
  end 
end
\\end{verbatim}
  END
end
def add_sbor
tema = "N\nActiveRecord Migration!!!"
text = "\nQ\nSelect true migration"
srt = "\n"
res = []
correct_indexes = ([false] * 3 + [true]).shuffle
res << random_migration(false, correct_indexes.pop)
3.times { res << random_migration(false, correct_indexes.pop) }

File.open('migration.tex', 'a') do |file| 
	file.puts tema 
	file.puts text
	file.puts srt
	file.puts res.shuffle.join("\n")
end
end
add_sbor

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
end

#Мацумото - программирование на Ruby. rubyonrails.org  - guides

res = []
res << add_index(false)
3.times { res << add_index }
  text = "Q\nSelect true migration"
  text = File.open('migration2.tex', 'a'){ |file| file.puts  text }

file = File.open('migration2.tex', 'a'){ |file| file.puts res.shuffle.join("\n") }
}

