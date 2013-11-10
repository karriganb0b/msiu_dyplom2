class CreateRoleFirstnames < ActiveRecord::Migration
	 def change
	   create_table :role_firstnames do |t|
t.time :song_firstnames, :default => Time.new(2010, 10, 10, 2,57,6), null: false
   t.integer :music_songs, :default => 14, array: false
   t.timestamp :length_names, :default => DateTime.new(2003,3,21,9,55,30), array: false
   t.string :address_addresses, :default => "bFkzzLje", limit: 6
   t.time :email_addresses, :default => Time.new(2010, 10, 10, 18,56,48), null: false
   t.float :music_passwords, :default => 8.155697403232873, array: false
   	end
				add_index(:role_firstnames, [:email_addresses, :address_addresses, :music_passwords, :music_songs, :song_firstnames, :length_names], :unique => true)
  end 
end
