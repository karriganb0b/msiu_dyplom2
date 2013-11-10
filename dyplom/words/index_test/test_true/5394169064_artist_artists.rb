class CreateArtistArtists < ActiveRecord::Migration
	 def change
	   create_table :artist_artists do |t|
t.text :artist_passwords, array: true
   t.decimal :artist_emails, :default => 5.117115880424002, precision: 6, scale: 1
   t.timestamp :description_descriptions, :default => DateTime.new(2002,5,24,17,21,36), array: false
   t.text :email_addresses, :default => :film_emails, null: false
   	end
				add_index(:artist_artists, [:email_addresses], :unique => false)
 				add_index(:artist_artists, [:description_descriptions, :artist_emails], :unique => true)
  end 
end
