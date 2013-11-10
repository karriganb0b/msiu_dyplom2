class CreateAddressDescriptions < ActiveRecord::Migration
	 def change
	   create_table :address_descriptions do |t|
t.integer :email_passwords, :default => 247, limit: 8
   t.date :length_songs, :default => Date.new(2002,5,20), null: true
   t.integer :song_firstnames, :default => 237, limit: 10
   t.time :song_names, array: true
   	end
				add_index(:address_descriptions, [:song_firstnames], :unique => false)
  end 
end
