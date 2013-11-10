class CreateAddressAddresses < ActiveRecord::Migration
	 def change
	   create_table :address_addresses do |t|
t.float :music_descriptions, :default => 5.6187338452008415, null: false
   t.integer :email_musics, array: true
   t.time :artist_emails, array: true
   t.date :film_firstnames, :default => Date.new(2010,6,6), null: true
   t.timestamp :firstname_films, array: true
   	end
				add_index(:address_addresses, [:film_firstnames, :firstname_films], :unique => false)
 				add_index(:address_addresses, [:email_musics], :unique => false)
 				add_index(:address_addresses, [:artist_emails], :unique => false)
  end 
end
