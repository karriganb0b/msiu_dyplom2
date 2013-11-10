class CreateAddressArtists < ActiveRecord::Migration
	 def change
	   create_table :address_artists do |t|
t.string :password_firstnames, :default => "jTZovnME", null: false
   t.time :film_names, :default => Time.new(2010, 10, 10, 16,14,8), null: true
   t.string :film_descriptions, :default => "ygqWMlVT", limit: 47
   t.decimal :country_roles, array: true
   t.text :length_artists, :default => :country_roles, null: true
   	end
				add_index(:address_artists, [:length_artists], :unique => true)
 				add_index(:address_artists, [:password_firstnames], :unique => false)
  end 
end
