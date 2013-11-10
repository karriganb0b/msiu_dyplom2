class CreateAddressLengths < ActiveRecord::Migration 
  def change 
    create_table :address_lengths do |t| 
      t.blob :and, :default => 105, scale: 2
      t.blob :super, :default => 192, limit: 1
      t.datetimeoffset :next, :default => Date.new(2005,4,6), scale: 0
      t.char :begin, :default => "qDzWCZpN", limit: 7
      t.tinyint(1) :class, :default => true, precision: 6
   end
end
end
