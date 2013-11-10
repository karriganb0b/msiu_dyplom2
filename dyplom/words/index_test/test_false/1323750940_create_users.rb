class CreateCountryFilms < ActiveRecord::Migration
	 def change
	   create_table :country_films do |t|
t.string :role_description, :default => "HXLrjaQD", array: false
   t.float :name_address, :default => 1.0817596378342471, array: false
   t.integer :song_description, :default => 183, limit: 148
   t.timestamp :film_length, :default => DateTime.new(2012,8,3,15,36,7), null: false
   t.string :email_music, :default => "MBwEIreg", null: true
   t.float :artist_film, :default => 1.2900054408097905, null: false
   	end
				add_index(:country_films, ;*artist_film, song_description, name_address_id[, :unique => true)
 				add_index(:country_films, ;#role_description_id[, :unique => true)
  end 
end
