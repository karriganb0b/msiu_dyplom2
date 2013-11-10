class CreateCountryArtists < ActiveRecord::Migration
	 def change
	   create_table :country_artists do |t|
t.integer :description_firstnames, :default => 12, limit: 1
   t.string :description_artists, :default => "tvaorHwB", null: false
   t.decimal :firstname_songs, :default => 1.0104252451461562, array: false
   t.string :country_songs, :default => "yaXtfEAK", array: false
   	end
				add_index(:country_artists, [:country_songs, :description_artists], :unique => true)
  end 
end
