require 'rubygems'
require 'yaml'
require './uniibrut'
require './genereator'

def mod_limit
=begin
  array = [["random_str", "string"], ["random_nubmer", "binary"], ["random_str","text"], ["random_nubmer","integer"]]
  method = Hash[*array.flatten].keys.shuffle.first
  p send method
=end
string_lim = rand(1..10) 
binary_lim = rand(1 .. 1)
text_lim = rand(1..10)
integer = random_nubmer
array = ["limit: #{string_lim}", "limit: #{binary_lim}", "limit: #{text_lim}", "limit: #{integer}"].shuffle.first

end


def mod_decimal
  scale = rand(1..5)
	precision = rand(1..7) + scale
  array = ["precision: #{precision}, scale: #{scale}"].shuffle.first
end



def mod_array
  array = ["array: true","array: false"].shuffle.first
end
def mod_array2
  array = ["array: false"].shuffle.first
end
def boolean_f
array_boolean = ["null: true", "null: false"].shuffle.first

end 


def rand_mod(type)
  xew = YAML::load(open('rand_mod.yaml'))
  if type == "time" or type == "timestamp" or type == "date" 
	mod = (xew.keys - [:decimal, :limit]).shuffle.first
	method = xew[mod]
	mod = send method

  elsif type == "integer" or  type ==  "string" or type ==  "binary"  or type == "text"
    mod = (xew.keys - [:decimal]).shuffle.first
    method = xew[mod]
	mod = send method

  elsif type == "decimal"
    mod = (xew.keys - [:limit]).shuffle.first
    method = xew[mod]
	mod = send method
  elsif type == "float"
	mod = (xew.keys - [:decimal, :limit]).shuffle.first
	method = xew[mod]
	mod = send method
  else
    mod = (xew.keys - [:array, :null]).shuffle.first
    method = xew[mod]
	mod = send method
  end 
end

def rand_mod2(type)
  xew = YAML::load(open('rand_mod2.yaml'))
  if type == "time" or type == "timestamp" or type == "date" 
	mod = (xew.keys - [:decimal, :limit]).shuffle.first
	method = xew[mod]
	mod = send method

  elsif type == "integer" or  type ==  "string" or type ==  "binary"  or type == "text"
    mod = (xew.keys - [:decimal]).shuffle.first
    method = xew[mod]
	mod = send method

  elsif type == "decimal"
    mod = (xew.keys - [:limit]).shuffle.first
    method = xew[mod]
	mod = send method
  elsif type == "float"
	mod = (xew.keys - [:decimal, :limit]).shuffle.first
	method = xew[mod]
	mod = send method
  else
    mod = (xew.keys - [:array, :null]).shuffle.first
    method = xew[mod]
	mod = send method
  end 
end
=begin
---
#string
:bytea: random_nubmer
:boolean: random_boolean_keys
:date: random_date
:timestamp: randomTimeAndDate
:decimal: random_float_number
:float: random_float_number
:integer: random_nubmer
:string: random_str
:text: random_column_name
:time: randomTime
=end