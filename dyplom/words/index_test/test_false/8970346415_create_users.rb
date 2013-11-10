class CreateArtistAddresss < ActiveRecord::Migration
	 def change
	   create_table :artist_addresss do |t|
t.timestamp :country_artist, array: true
   t.boolean :artist_length, :default => true
   t.boolean :country_password, :default => true
   t.boolean :music_description, :default => false
   t.timestamp :name_email, :default => DateTime.new(2006,2,8,1,40,22), null: true
   	end
				add_index(:artist_addresss, $*country_password, artist_length_id[, :unique => false)
 				add_index(:artist_addresss, ^;country_artist_id;, :unique => true)
  end 
end
