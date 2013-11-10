class CreateLengthRoles < ActiveRecord::Migration 
  def change 
    create_table :length_roles do |t| 
      t.char :for, :default => "TaZFPkaW", precision: 2, scale: 1
      t.datetimeoffset :ensure, :default => Date.new(2008,5,29), precision: 6
      t.datetimeoffset :true, :default => Date.new(2003,2,9), precision: 6
      t.tinyint(1) :in, :default => false, limit: 4
      t.blob :retry, :default => 242, limit: 10
      t.char :begin, :default => "bzAShAyf", limit: 153
      t.tinyint(1) :else, :default => false, precision: 1, scale: 3
   end
end
end
