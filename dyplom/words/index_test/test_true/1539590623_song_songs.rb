class CreateSongSongs < ActiveRecord::Migration
	 def change
	   create_table :song_songs do |t|
t.timestamp :password_songs, :default => DateTime.new(2007,1,9,11,48,22), null: false
   t.text :name_films, array: true
   t.float :description_descriptions, :default => 6.38126607759172, null: true
   t.date :country_musics, :default => Date.new(2011,6,19), null: false
   	end
				add_index(:song_songs, [:name_films], :unique => true)
 				add_index(:song_songs, [:description_descriptions, :country_musics], :unique => true)
 				add_index(:song_songs, [:password_songs], :unique => false)
  end 
end
