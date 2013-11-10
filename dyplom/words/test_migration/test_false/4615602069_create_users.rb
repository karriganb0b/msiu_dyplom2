class CreateAddressRoles < ActiveRecord::Migration 
  def change 
    create_table :address_roles do |t| 
      t.char :yield, :default => "MSoLAxhm", limit: 10
      t.tinyint(1) :def, :default => false, limit: 1
      t.char :if, :default => "cFGCYKEZ", precision: 4, scale: 4
      t.tinyint(1) :if, :default => true, precision: 4, scale: 3
      t.int(11) :alias, :default => 224, limit: 4
   end
end
end
