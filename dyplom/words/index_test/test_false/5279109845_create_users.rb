class CreateAddressRoles < ActiveRecord::Migration
	 def change
	   create_table :address_roles do |t|
t.integer :description_description, array: true
   t.timestamp :address_length, :default => DateTime.new(2012,11,17,22,45,43), null: false
   t.string :country_length, :default => "pMkPpwxZ", limit: 223
   t.decimal :artist_country, :default => 5.827248913223189, precision: 6, scale: 2
   t.integer :firstname_role, :default => 4, null: false
   	end
				add_index(:address_roles, ^;firstname_role, country_length_id;, :unique => true)
 				add_index(:address_roles, $;address_length_id*, :unique => true)
 				add_index(:address_roles, *;description_description_id%, :unique => false)
 				add_index(:address_roles, $;artist_country_id], :unique => true)
  end 
end
