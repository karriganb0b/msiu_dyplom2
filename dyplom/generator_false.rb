#encoding: UTF-8
require 'rubygems'
require 'yaml'
require './uniibrut'
require './genereator'
require './helper'

  tema = "N\nActiveRecord Migration!!!
  "
  tema = File.open('migration.tex', 'a'){ |file| file.puts  tema }
  1.times{
def random_migration(correct=true)
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
  "t.#{data_type} :#{name}, :default"  + "=>" +(send method).to_s + ", #{rand_field}\n   "
  end.join("   ") +
  "\n    end \n  end \nend\n\\end{verbatim}"

  end

res = []
res << random_migration(false)
3.times { res << random_migration }
  text = "Q\nSelect true migration"
  text = File.open('migration.tex', 'a'){ |file| file.puts  text }

file = File.open('migration.tex', 'a'){ |file| file.puts res.shuffle.join("\n") }
}
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


res = []
res << add_index(false)
3.times { res << add_index }
  text = "Q\nSelect true migration"
  text = File.open('migration2.tex', 'a'){ |file| file.puts  text }

file = File.open('migration2.tex', 'a'){ |file| file.puts res.shuffle.join("\n") }
}
def symbol_function
select_false = [";","%","$","#","^","*","[","]"].shuffle.first
end
#Мацумото - программирование на Ruby. rubyonrails.org  - guides
