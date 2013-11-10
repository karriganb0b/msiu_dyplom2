class CreateFirstnamePasswords < ActiveRecord::Migration
	 def change
	   create_table :firstname_passwords do |t|
t.text :country_addresses, :default => :artist_addresses, null: true
   t.text :email_films, array: true
   t.float :address_songs, :default => 3.9773951805736836, null: true
   t.float :artist_countries, :default => 8.603550125400952, array: false
   t.time :description_films, :default => Time.new(2010, 10, 10, 10,19,42), null: true
   t.boolean :country_roles, :default => false
   	end
				add_index(:firstname_passwords, [:country_roles, :country_addresses, :artist_countries, :address_songs], :unique => false)
  end 
end
