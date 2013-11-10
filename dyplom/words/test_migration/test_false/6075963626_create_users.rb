class CreateCountryArtists < ActiveRecord::Migration 
  def change 
    create_table :country_artists do |t| 
      t.tinyint(1) :then, :default => false, limit: 9
      t.blob :nil, :default => 136, precision: 4
      t.tinyint(1) :elsif, :default => true, limit: 3
      t.char :self, :default => "bQKNPeJI", scale: 3
      t.char :BEGIN, :default => "NgNgAukO", limit: 2
   end
end
end
