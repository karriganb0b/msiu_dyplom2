class CreateMusicArtists < ActiveRecord::Migration
	 def change
	   create_table :music_artists do |t|
t.date :artist_musics, :default => Date.new(2003,6,16), array: false
   t.time :role_passwords, :default => Time.new(2010, 10, 10, 1,53,3), null: true
   t.text :email_artists, :default => :address_musics, null: false
   t.text :firstname_roles, :default => :role_descriptions, null: false
   t.boolean :email_artists, :default => true
   	end
				add_index(:music_artists, [:role_passwords], :unique => false)
 				add_index(:music_artists, [:email_artists], :unique => false)
  end 
end
