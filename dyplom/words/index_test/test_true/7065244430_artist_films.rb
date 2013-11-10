class CreateArtistFilms < ActiveRecord::Migration
	 def change
	   create_table :artist_films do |t|
t.date :film_songs, array: true
   t.date :song_roles, :default => Date.new(2008,3,21), null: false
   t.decimal :country_songs, :default => 0.9461366347999087, precision: 6, scale: 4
   t.decimal :country_emails, :default => 3.708127307589138, precision: 7, scale: 1
   t.integer :email_addresses, :default => 134, null: false
   t.float :name_musics, :default => 6.538189219126396, null: false
   	end
				add_index(:artist_films, [:song_roles, :name_musics, :country_emails, :country_songs, :email_addresses], :unique => false)
  end 
end
