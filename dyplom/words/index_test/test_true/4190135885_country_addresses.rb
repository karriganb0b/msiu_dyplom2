class CreateCountryAddresses < ActiveRecord::Migration
	 def change
	   create_table :country_addresses do |t|
t.text :music_roles, :default => :artist_names, null: true
   t.timestamp :film_songs, array: true
   t.decimal :role_countries, :default => 2.2455839176687284, array: false
   t.time :role_descriptions, array: true
   t.timestamp :address_films, :default => DateTime.new(2009,1,11,8,27,43), array: false
   t.text :song_countries, :default => :length_emails, limit: 8
   	end
				add_index(:country_addresses, [:song_countries], :unique => false)
 				add_index(:country_addresses, [:music_roles], :unique => true)
 				add_index(:country_addresses, [:role_descriptions, :film_songs], :unique => true)
 				add_index(:country_addresses, [:role_countries, :address_films], :unique => false)
  end 
end
