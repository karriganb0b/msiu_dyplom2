#encoding: UTF-8
require 'rubygems'
require 'yaml'
require './reversible'
require './reversible_for_up_and_down'
require './generator_false'

mas_str_1 = ["1. Синтаксис функции create_table.change","2. Синтаксис метода create_table.reversible","3. Синтаксис функций up и down","4. Синтаксис вспомогательных функций", "5.Синтаксис метода add_index", "6. Интегрирование данных миграции в файл schema.rb"].join("\n")
tema = ["ActiveRecord migration"]

puts "Выберите тему \n 1. ActiveRecord migration"
a = gets.to_i
if a == 1
puts "Выберите подраздел темы"
puts mas_str_1
b = gets.to_i
puts "Введите количество вопросов"
size = gets.to_i
else 
puts "Ошибка ввода"
end


if b==1
size.times{
system('ruby migration_tester_for_create.rb')}
elsif b==2
size.times{
system('ruby migration_tester2.rb')}
elsif b==3
size.times{
system('ruby up_down_base.rb')}
elsif b==5
size.times{
system('ruby index_base.rb')}
elsif b==6
size.times{
system('ruby migration_tester.rb')}
else
puts "Input ErroR"
end

