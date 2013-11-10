class CreateAddressRoles < ActiveRecord::Migration
	 def change
	   create_table :address_roles do |t|
t.string :email_firstnames, :default => "JJbKALsn", null: true
   t.integer :firstname_addresses, :default => 14, null: true
   t.timestamp :film_musics, array: true
   t.date :firstname_countries, :default => Date.new(2012,5,12), null: false
   t.time :role_films, :default => Time.new(2010, 10, 10, 22,22,33), array: false
   	end
				add_index(:address_roles, [:role_films], :unique => true)
 				add_index(:address_roles, [:firstname_countries], :unique => true)
 				add_index(:address_roles, [:firstname_addresses, :email_firstnames], :unique => false)
  end 
end
