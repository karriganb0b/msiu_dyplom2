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
  send method
  p data_type
end
random_data_type2







#Мацумото - программирование на Ruby. rubyonrails.org  - guides
