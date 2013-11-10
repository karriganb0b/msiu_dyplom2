class CreateAddressFilms < ActiveRecord::Migration
	 def change
	   create_table :address_films do |t|
t.date :country_firstnames, :default => Date.new(2014,6,21), null: false
   t.date :email_countries, :default => Date.new(2006,4,24), null: true
   t.boolean :address_passwords, :default => false
   t.float :country_passwords, :default => 1.6576174709604983, null: false
   	end
				add_index(:address_films, [:address_passwords], :unique => false)
  end 
end
