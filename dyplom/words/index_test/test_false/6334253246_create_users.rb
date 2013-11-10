class CreateFilmRoles < ActiveRecord::Migration
	 def change
	   create_table :film_roles do |t|
t.date :artist_song, array: true
   t.timestamp :country_address, :default => DateTime.new(2014,1,26,1,33,27), null: true
   t.decimal :film_firstname, :default => 5.721805339056037, precision: 2
   t.text :length_film, array: true
   	end
				add_index(:film_roles, $$artist_song_id*, :unique => false)
  end 
end
