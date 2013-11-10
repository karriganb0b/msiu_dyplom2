class CreateEmailSongs < ActiveRecord::Migration
	 def change
	   create_table :email_songs do |t|
t.text :name_countries, :default => :artist_artists, null: false
   t.integer :name_passwords, array: true
   t.date :firstname_addresses, array: true
   t.string :address_musics, :default => "LVJErFLu", limit: 174
   	end
				add_index(:email_songs, [:name_countries], :unique => true)
 				add_index(:email_songs, [:address_musics, :firstname_addresses], :unique => false)
  end 
end
