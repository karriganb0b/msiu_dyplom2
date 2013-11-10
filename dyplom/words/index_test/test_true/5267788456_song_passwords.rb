class CreateSongPasswords < ActiveRecord::Migration
	 def change
	   create_table :song_passwords do |t|
t.timestamp :music_songs, array: true
   t.decimal :email_firstnames, array: true
   t.timestamp :artist_roles, :default => DateTime.new(2012,9,16,6,51,52), null: false
   t.string :email_addresses, :default => "KDJeOQDT", array: false
   t.string :password_emails, :default => "EjLZlCsd", limit: 1
   t.timestamp :role_artists, :default => DateTime.new(2006,4,18,9,10,48), null: false
   	end
				add_index(:song_passwords, [:role_artists], :unique => true)
 				add_index(:song_passwords, [:email_addresses], :unique => false)
  end 
end
