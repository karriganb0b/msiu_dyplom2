class CreateFirstnameAddresss < ActiveRecord::Migration
	 def change
	   create_table :firstname_addresss do |t|
t.decimal :music_address, :default => 7.250185345895529, array: false
   t.decimal :song_artist, :default => 4.16843943547067, null: true
   t.decimal :music_role, :default => 7.8362702886956335, precision: 5
   t.float :address_film, :default => 1.7089386648145952, array: false
   	end
				add_index(:firstname_addresss, ][music_address, music_role, address_film, song_artist_id#, :unique => false)
  end 
end
