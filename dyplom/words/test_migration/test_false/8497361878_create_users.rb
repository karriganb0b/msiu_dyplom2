class CreateLengthLengths < ActiveRecord::Migration 
  def change 
    create_table :length_lengths do |t| 
      t.tinyint(1) :unless, :default => false, limit: 8
      t.datetime :class, :default => DateTime.new(2012,11,10,23,4,36), scale: 0
      t.tinyint(1) :break, :default => false, limit: 6
      t.datetime :yield, :default => DateTime.new(2005,10,8,16,7,50), precision: 2
      t.char :and, :default => "WsnqbKGK", scale: 4
      t.int(11) :break, :default => 158, precision: 6
   end
end
end
