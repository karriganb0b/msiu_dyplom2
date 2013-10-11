#encoding: UTF-8
require 'rubygems'
require 'yaml'
require './uniibrut'
require './genereator'
require './helper'
=begin
def five_str(correct=true, n=rand(3..6))
files_with_types = correct ? 'words/falsedatatype.yaml' : 'qq.yaml'
  hash = YAML::load(open(files_with_types))
  data_type = hash.keys.shuffle.first
  method = hash[data_type]
  app = correct ? (random_false_column).to_s : (random_column_name).to_s
  name = correct ? (random_false_column).to_s : (random_column_name).to_s
  rand_field = rand_mod
k = 0
while k!=n
  data_type = hash.keys.shuffle.first
  method = hash[data_type]
  app = correct ? (random_false_column).to_s : (random_column_name).to_s
  name = correct ? (random_false_column).to_s : (random_column_name).to_s
  rand_field = rand_mod

  a = [] 
  a[1]= "t.#{data_type} :#{name}, :default"  + "=>" +(send method).to_s + ", #{rand_field}\n"
  k +=1
  p a
  end
end
=end
  tema = "N\n ActiveRecord Migration!!!
  "
  tema = File.open('migration.tex', 'a'){ |file| file.puts  tema }
  500.times{
def random_migration(correct=true)
  files_with_types = correct ? 'words/falsedatatype.yaml' : 'qq.yaml'
  hash = YAML::load(open(files_with_types))
  data_type = hash.keys.shuffle.first
  method = hash[data_type]
  app = correct ? (random_false_column).to_s : (random_column_name).to_s
  name = correct ? (random_false_column).to_s : (random_column_name).to_s
  indicator = correct ? "F" : "T"
  rand_field = rand_mod(data_type)
  add_index = name
  "\n#{indicator}\n\n\begin{verbatim}\n class CreateUsers < ActiveRecord::Migration \n  def change \n    create_table #{app} do |t| \n      t.#{data_type} :#{name}, :default"  + "=>" +(send method).to_s + ", #{rand_field}\n    "+ "\n    end \n  end \nend\n\end{verbatim}"
end

res = []
res << random_migration(false)
3.times { res << random_migration }
  text = "Q\n Select true migration"
  text = File.open('migration.tex', 'a'){ |file| file.puts  text }

file = File.open('migration.tex', 'a'){ |file| file.puts res.shuffle.join("\n") }
}




#Мацумото - программирование на Ruby. rubyonrails.org  - guides
