class CreateArtistAddresses < ActiveRecord::Migration 
  def change 
    create_table :artist_addresses do |t| 
      t.blob :and, :default => 73, limit: 2
      t.datetime :super, :default => DateTime.new(2000,10,26,14,32,43), precision: 6
      t.datetime :or, :default => DateTime.new(2009,5,23,1,38,39), limit: 6
      t.tinyint(1) :undef, :default => true, limit: 122
      t.datetime :when, :default => DateTime.new(2011,4,14,16,39,36), limit: 216
   end
end
end
