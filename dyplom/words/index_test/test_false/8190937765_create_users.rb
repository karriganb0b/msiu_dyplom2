class CreateArtistLengths < ActiveRecord::Migration
	 def change
	   create_table :artist_lengths do |t|
t.integer :artist_film, :default => 104, array: false
   t.time :length_email, :default => Time.new(2010, 10, 10, 6,51,8), array: false
   t.integer :artist_address, :default => 211, null: true
   t.integer :country_song, array: true
   t.boolean :music_firstname, :default => true
   	end
				add_index(:artist_lengths, ^$length_email, country_song_id#, :unique => false)
  end 
end
