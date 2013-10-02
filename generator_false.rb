#encoding: UTF-8
require 'rubygems'
require 'yaml'
require './uniibrut'
require './genereator'

 #Проверка совмещения ключа и аргумента 

def random_data_type2
  hash = YAML::load(open('qq.yaml'))
  data_type = hash.keys.shuffle.first
  method = hash[data_type]
  app = (random_column_name).to_s
  string = "class CreateUsers < ActiveRecord::Migration \n  def change \n   create_table #{app} do |t| \n     #{data_type} "  + ":" +(send method).to_s + "\n   end \n  end \nend"
  string = File.open('migration.rb', 'w'){ |file| file.write string }
end
random_data_type2







#Мацумото - программирование на Ruby. rubyonrails.org  - guides
