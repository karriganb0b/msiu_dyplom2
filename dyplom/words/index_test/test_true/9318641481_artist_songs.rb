class CreateArtistSongs < ActiveRecord::Migration
	 def change
	   create_table :artist_songs do |t|
t.timestamp :length_films, :default => DateTime.new(2013,3,3,11,31,48), null: true
   t.float :description_names, :default => 8.101028293573668, null: false
   t.decimal :artist_firstnames, :default => 4.59238170142845, null: true
   t.boolean :firstname_names, :default => false
   t.float :music_descriptions, :default => 8.218486197614496, array: false
   t.string :song_addresses, :default => "pzeqdsMG", null: false
   	end
				add_index(:artist_songs, [:length_films], :unique => false)
 				add_index(:artist_songs, [:music_descriptions, :firstname_names], :unique => false)
  end 
end
