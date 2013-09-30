#encoding: UTF-8
require 'yaml'
def random_false_column
  postgresql_false_column_name = YAML::load(open('words/false_column_name.yaml'))
  postgresql_false_column_name = postgresql_false_column_name.strip.split(',')
  postgresql_false_column_name_one = postgresql_false_column_name.compact.shuffle.first
 # postgresql_false_column_name_two = postgresql_false_column_name.compact.shuffle.first
   puts "Генерация неверного случайного названия колонки - #{postgresql_false_column_name_one}"
end

def random_data_type
  hash = YAML::load(open('qq.yaml'))
  data_type = hash.keys.shuffle.first
  method = hash[data_type]
  send method
end

def random_nubmer; 10; end
def random_boolean_keys; true; end
def randomDate; Date.new('10.10.10'); end

#Случайный тип данных
def random_data_type
  postgresql_data_type_hash = YAML::load(open('qq.yaml'))
  postgresql_data_type = postgresql_data_type_hash.keys
  postgresql_data_type = postgresql_data_type.shuffle.first
  p postgresql_data_type
end


#Случайное название колонки
 
def random_column_name
  postgresql_column_name = YAML::load(open('words/columnname.yaml'))
  postgresql_column_name = postgresql_column_name.strip.split(',')
  postgresql_column_name_one = postgresql_column_name.compact.shuffle.first
  postgresql_column_name_two = postgresql_column_name.compact.shuffle.first
  puts "Генерация рандомного названия колонки из двух слов - #{postgresql_column_name_one + "_" + postgresql_column_name_two}"
end

  #аргументы для ключа null
def random_boolean_keys
array_boolean = YAML::load(open('words/keys_arguments/arguments_for_null.yaml'))
array_boolean = array_boolean.strip.split(',')
array_boolean = array_boolean.compact.shuffle.first
puts "Генерация рандомного значения для ключа :null - #{array_boolean}"
end 


def random_default_keys
array_default = YAML::load(open('words/keys_arguments/argumnts_for_default.yaml'))
array_default = array_default.split(',')
array_default = array_default.compact.shuffle.first
puts "Генерация рандомного значения для ключа :default - #{array_default}"
end 



 #случайный выбор в зависимости от типа данных одного из случайных модификаторов