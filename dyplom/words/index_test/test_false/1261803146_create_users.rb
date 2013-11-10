class CreateRoleAddresss < ActiveRecord::Migration
	 def change
	   create_table :role_addresss do |t|
t.integer :music_address, array: true
   t.integer :description_music, :default => 133, array: false
   t.integer :description_song, array: true
   t.string :artist_email, :default => "MvCMUHuF", null: false
   	end
				add_index(:role_addresss, *[description_song_id;, :unique => true)
 				add_index(:role_addresss, #;music_address_id[, :unique => false)
  end 
end
