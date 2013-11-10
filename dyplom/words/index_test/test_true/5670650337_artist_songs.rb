class CreateArtistSongs < ActiveRecord::Migration
	 def change
	   create_table :artist_songs do |t|
t.text :artist_firstnames, array: true
   t.date :country_artists, :default => Date.new(2005,0,22), array: false
   t.date :length_lengths, array: true
   t.boolean :length_addresses, :default => false
   t.timestamp :artist_descriptions, array: true
   	end
				add_index(:artist_songs, [:country_artists, :artist_descriptions], :unique => true)
 				add_index(:artist_songs, [:artist_firstnames], :unique => true)
  end 
end
