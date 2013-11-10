class CreateAddressDescriptions < ActiveRecord::Migration 
  def change 
    create_table :address_descriptions do |t| 
      t.datetimeoffset :in, :default => Date.new(2013,8,25), limit: 9
      t.tinyint(1) :for, :default => false, scale: 2
      t.datetime :nil, :default => DateTime.new(2005,8,4,22,21,46), limit: 1
      t.datetimeoffset :ensure, :default => Date.new(2011,7,15), limit: 7
      t.int(11) :break, :default => 40, limit: 2
      t.blob :class, :default => 129, limit: 8
   end
end
end
