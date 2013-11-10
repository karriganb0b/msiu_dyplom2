class CreateSongAddresses < ActiveRecord::Migration
	 def change
	   create_table :song_addresses do |t|
t.boolean :artist_musics, :default => true
   t.integer :film_musics, :default => 125, array: false
   t.time :song_names, :default => Time.new(2010, 10, 10, 20,47,2), array: false
   t.date :description_musics, :default => Date.new(2000,8,25), null: true
   t.boolean :description_addresses, :default => true
   	end
				add_index(:song_addresses, [:film_musics, :artist_musics, :song_names, :description_musics, :description_addresses], :unique => true)
  end 
end
