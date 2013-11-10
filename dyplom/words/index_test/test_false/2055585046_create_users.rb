class CreateAddressPasswords < ActiveRecord::Migration
	 def change
	   create_table :address_passwords do |t|
t.decimal :film_music, :default => 8.512691344439546, precision: 2, scale: 1
   t.text :role_description, :default => :role_email, array: false
   t.text :artist_name, :default => :name_artist, limit: 8
   t.time :length_length, :default => Time.new(2010, 10, 10, 15,54,34), null: true
   t.integer :artist_artist, :default => 115, limit: 4
   	end
				add_index(:address_passwords, ^;role_description, artist_artist_id], :unique => true)
  end 
end
