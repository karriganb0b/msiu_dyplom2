class CreateLengthRoles < ActiveRecord::Migration 
  def change 
    create_table :length_roles do |t| 
      t.tinyint(1) :else, :default => false, limit: 10
      t.tinyint(1) :return, :default => true, limit: 2
      t.datetimeoffset :if, :default => Date.new(2006,9,1), scale: 3
      t.blob :yield, :default => 101, precision: 3
      t.datetimeoffset :for, :default => Date.new(2001,6,4), precision: 2
   end
end
end
