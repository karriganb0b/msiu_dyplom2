#class CreateJoinTableCustomerProduct < ActiveRecord::Migration
 # def change
  #  create_join_table :customers, :products do |t|
      # t.index [:customer_id, :product_id]
      # t.index [:product_id, :customer_id]
   # end
  #end
#end

require './uniibrut'
require 'active_support/all'
def rand_name
  words = ["customer", "product", "role", "user", "song", "email", "password", "butcher", "file"].shuffle.first
end


def generate_cjt(correct=true)
  table = rand_name
  d_table = rand_name
	array = ["#{table}_id", "#{d_table}_id"]
    while table == d_table
      table = rand_name
      d_table = rand_name
    end
 str = <<-END
class CreateJoinTable#{table.capitalize}#{d_table.capitalize} < ActiveRecord::Migration
    create_join_table :#{table.pluralize}, :#{d_table.pluralize} do |t|
      # t.index #{array}
      # t.index #{array.reverse}
    end
  end
end
END
 p str
end

def add_gener
res = []
res << generate_cjt(true)
0.times {res << generate_cjt(true) }

file = File.open("words/index_test/create_m.rb", 'a'){ |file| file.puts res.shuffle.join("\n") }
end
add_gener