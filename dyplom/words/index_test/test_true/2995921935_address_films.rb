class CreateAddressFilms < ActiveRecord::Migration
	 def change
	   create_table :address_films do |t|
t.text :firstname_countries, :default => :firstname_artists, null: true
   t.time :address_roles, :default => Time.new(2010, 10, 10, 10,35,5), null: true
   t.boolean :length_descriptions, :default => true
   t.integer :music_addresses, :default => 121, limit: 5
   t.string :length_musics, :default => "zADmasnD", null: false
   	end
				add_index(:address_films, [:music_addresses], :unique => true)
  end 
end
