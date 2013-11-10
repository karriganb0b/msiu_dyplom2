class CreateNameEmails < ActiveRecord::Migration
	 def change
	   create_table :name_emails do |t|
t.string :address_films, :default => "IeIdgxwB", null: true
   t.text :country_artists, :default => :film_passwords, array: false
   t.string :artist_descriptions, :default => "zXGzJPgR", limit: 4
   t.text :music_lengths, :default => :name_lengths, limit: 7
   t.text :song_songs, :default => :role_musics, limit: 1
   t.timestamp :length_firstnames, :default => DateTime.new(2013,10,3,20,25,59), null: true
   	end
				add_index(:name_emails, [:song_songs], :unique => false)
 				add_index(:name_emails, [:artist_descriptions, :music_lengths], :unique => true)
 				add_index(:name_emails, [:address_films, :country_artists], :unique => false)
 				add_index(:name_emails, [:length_firstnames], :unique => false)
  end 
end
