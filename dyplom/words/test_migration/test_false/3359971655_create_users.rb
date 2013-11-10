class CreateAddressSongs < ActiveRecord::Migration 
  def change 
    create_table :address_songs do |t| 
      t.char :module, :default => "eGvosHYl", limit: 35
      t.int(11) :BEGIN, :default => 65, scale: 4
      t.blob :BEGIN, :default => 150, precision: 1
      t.blob :super, :default => 108, limit: 5
      t.int(11) :redo, :default => 196, limit: 7
      t.datetime :and, :default => DateTime.new(2007,6,12,13,25,30), precision: 2, scale: 2
   end
end
end
