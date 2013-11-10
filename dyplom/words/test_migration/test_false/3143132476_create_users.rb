class CreateAddressCountries < ActiveRecord::Migration 
  def change 
    create_table :address_countries do |t| 
      t.datetimeoffset :break, :default => Date.new(2012,11,16), limit: 6
      t.tinyint(1) :next, :default => true, limit: 4
      t.blob :END, :default => 248, limit: 9
      t.tinyint(1) :for, :default => true, precision: 0, scale: 1
      t.datetime :retry, :default => DateTime.new(2012,7,18,4,21,5), limit: 1
      t.int(11) :for, :default => 126, scale: 4
      t.int(11) :for, :default => 189, limit: 2
   end
end
end
