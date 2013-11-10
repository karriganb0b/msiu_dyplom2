class CreateMusicCountries < ActiveRecord::Migration
	 def change
	   create_table :music_countries do |t|
t.timestamp :role_addresses, array: true
   t.boolean :music_songs, :default => false
   t.float :firstname_films, array: true
   t.time :artist_firstnames, :default => Time.new(2010, 10, 10, 16,19,42), null: false
   	end
				add_index(:music_countries, [:music_songs], :unique => true)
 				add_index(:music_countries, [:firstname_films], :unique => false)
 				add_index(:music_countries, [:role_addresses], :unique => false)
 				add_index(:music_countries, [:artist_firstnames], :unique => false)
  end 
end
