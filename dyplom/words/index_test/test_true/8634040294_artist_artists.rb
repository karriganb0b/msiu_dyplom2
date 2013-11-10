class CreateArtistArtists < ActiveRecord::Migration
	 def change
	   create_table :artist_artists do |t|
t.string :film_musics, :default => "NqXinKCV", array: false
   t.date :artist_lengths, :default => Date.new(2013,11,14), null: false
   t.string :role_addresses, :default => "JtCtskVq", limit: 8
   t.float :firstname_films, :default => 7.080641553512527, null: false
   t.integer :email_passwords, :default => 34, limit: 6
   t.float :email_passwords, :default => 5.096356256495627, null: false
   	end
				add_index(:artist_artists, [:role_addresses], :unique => false)
 				add_index(:artist_artists, [:email_passwords], :unique => true)
  end 
end
