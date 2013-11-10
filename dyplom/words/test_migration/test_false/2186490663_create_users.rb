class CreatePasswordLengths < ActiveRecord::Migration 
  def change 
    create_table :password_lengths do |t| 
      t.char :END, :default => "eBomIJAw", precision: 4, scale: 4
      t.char :in, :default => "XsJFksJe", scale: 1
      t.datetimeoffset :begin, :default => Date.new(2011,7,4), precision: 3, scale: 3
      t.tinyint(1) :yield, :default => false, limit: 2
      t.blob :false, :default => 48, limit: 1
      t.datetime :then, :default => DateTime.new(2005,4,17,19,31,4), scale: 1
   end
end
end
