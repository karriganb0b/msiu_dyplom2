class CreateAddressArtists < ActiveRecord::Migration
	 def change
	   create_table :address_artists do |t|
t.integer :song_length, :default => 89, null: true
   t.string :email_name, :default => "VMYaIKmq", limit: 6
   t.decimal :music_length, :default => 1.1635910947682442, null: true
   t.time :description_address, array: true
   	end
				add_index(:address_artists, %%description_address_id$, :unique => true)
 				add_index(:address_artists, #;music_length, email_name_id], :unique => false)
  end 
end
