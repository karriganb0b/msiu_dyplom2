#encoding: UTF-8
require 'rubygems'
require 'yaml'
require './uniibrut'


 #Проверка совмещения ключа и аргумента 
def check_keys
  keys = YAML::load(open('words/keys.yaml'))
  keys = keys.strip.split(',')
  keys = keys.compact.shuffle.first
  if keys == "default"
  random_default_keys
  elsif keys == "null"
  random_boolean_keys
  end 
end
check_keys
random_false_column
false_data_type
random_column_name
random_boolean_keys
random_default_keys
 
 
 






#Мацумото - программирование на Ruby. rubyonrails.org  - guides
