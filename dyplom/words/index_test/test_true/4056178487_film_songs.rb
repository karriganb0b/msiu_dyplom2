class CreateFilmSongs < ActiveRecord::Migration
	 def change
	   create_table :film_songs do |t|
t.float :film_lengths, :default => 7.732429965332359, array: false
   t.decimal :music_names, :default => 8.22014106114898, precision: 11, scale: 5
   t.date :description_musics, :default => Date.new(2003,5,26), null: true
   t.time :music_descriptions, array: true
   t.text :song_passwords, :default => :artist_songs, array: false
   t.time :country_descriptions, array: true
   	end
				add_index(:film_songs, [:song_passwords, :music_names, :music_descriptions, :description_musics, :film_lengths], :unique => false)
  end 
end
