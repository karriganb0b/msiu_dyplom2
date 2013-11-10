class CreateFirstnameArtists < ActiveRecord::Migration 
  def change 
    create_table :firstname_artists do |t| 
      t.blob :next, :default => 166, limit: 2
      t.blob :class, :default => 147, limit: 86
      t.datetime :BEGIN, :default => DateTime.new(2013,4,30,3,6,27), precision: 1
      t.datetimeoffset :redo, :default => Date.new(2013,5,28), precision: 2
      t.int(11) :while, :default => 11, precision: 2, scale: 2
   end
end
end
