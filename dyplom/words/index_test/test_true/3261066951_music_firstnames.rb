class CreateMusicFirstnames < ActiveRecord::Migration
	 def change
	   create_table :music_firstnames do |t|
t.float :length_musics, :default => 1.314228292468988, array: false
   t.boolean :country_firstnames, :default => true
   t.float :name_songs, array: true
   t.integer :country_emails, :default => 96, limit: 18
   t.string :artist_countries, :default => "DRwjGVQI", limit: 210
   t.float :length_artists, array: true
   	end
				add_index(:music_firstnames, [:artist_countries], :unique => true)
 				add_index(:music_firstnames, [:country_emails], :unique => true)
 				add_index(:music_firstnames, [:length_musics], :unique => true)
 				add_index(:music_firstnames, [:country_firstnames], :unique => false)
  end 
end
