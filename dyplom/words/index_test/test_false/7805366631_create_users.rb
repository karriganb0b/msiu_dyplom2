class CreatePasswordSongs < ActiveRecord::Migration
	 def change
	   create_table :password_songs do |t|
t.float :length_song, :default => 6.814247261129414, array: false
   t.decimal :address_country, :default => 7.638495680613675, scale: 4
   t.text :artist_length, :default => :description_song, limit: 5
   t.decimal :song_film, :default => 7.19434119019711, null: true
   t.decimal :country_music, :default => 8.735433807309366, scale: 4
   	end
				add_index(:password_songs, %#address_country, artist_length, song_film_id%, :unique => false)
 				add_index(:password_songs, ;%length_song_id;, :unique => true)
  end 
end
