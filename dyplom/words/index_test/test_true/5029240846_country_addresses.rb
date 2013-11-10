class CreateCountryAddresses < ActiveRecord::Migration
	 def change
	   create_table :country_addresses do |t|
t.float :password_countries, :default => 1.100980970356345, null: false
   t.timestamp :name_songs, array: true
   t.integer :music_passwords, :default => 201, null: false
   t.integer :role_descriptions, :default => 131, array: false
   t.timestamp :country_songs, :default => DateTime.new(2014,6,23,19,3,20), null: false
   	end
				add_index(:country_addresses, [:password_countries, :role_descriptions], :unique => false)
 				add_index(:country_addresses, [:country_songs], :unique => true)
  end 
end
