class CreateMusicArtists < ActiveRecord::Migration
	 def change
	   create_table :music_artists do |t|
t.boolean :country_films, :default => true
   t.text :role_names, :default => :film_firstnames, null: false
   t.boolean :role_artists, :default => true
   t.time :country_lengths, :default => Time.new(2010, 10, 10, 12,41,54), null: true
   t.timestamp :music_films, :default => DateTime.new(2007,6,21,4,25,21), null: true
   	end
				add_index(:music_artists, [:country_films], :unique => true)
 				add_index(:music_artists, [:role_artists], :unique => true)
  end 
end
