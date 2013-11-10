class CreateFilmArtists < ActiveRecord::Migration
	 def change
	   create_table :film_artists do |t|
t.date :music_password, :default => Date.new(2006,9,20), null: true
   t.integer :address_artist, :default => 202, null: false
   t.integer :artist_length, :default => 243, limit: 1
   t.integer :film_music, :default => 146, null: true
   t.integer :password_length, :default => 79, array: false
   t.float :role_country, :default => 2.314975327399945, array: false
   	end
				add_index(:film_artists, %*role_country, address_artist, artist_length, music_password, password_length_id^, :unique => true)
  end 
end
