class CreateArtistPasswords < ActiveRecord::Migration
	 def change
	   create_table :artist_passwords do |t|
t.string :song_emails, :default => "ndrYkpAY", array: false
   t.string :role_films, array: true
   t.timestamp :password_songs, :default => DateTime.new(2006,5,23,18,13,49), null: false
   t.date :country_artists, array: true
   	end
				add_index(:artist_passwords, [:password_songs], :unique => true)
 				add_index(:artist_passwords, [:song_emails, :country_artists], :unique => false)
  end 
end
