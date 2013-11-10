class CreateCountryAddresses < ActiveRecord::Migration
	 def change
	   create_table :country_addresses do |t|
t.boolean :description_emails, :default => true
   t.timestamp :length_names, :default => DateTime.new(2003,6,7,8,38,7), null: true
   t.date :password_names, :default => Date.new(2006,10,11), array: false
   t.boolean :email_passwords, :default => false
   t.float :film_firstnames, array: true
   	end
				add_index(:country_addresses, [:password_names, :email_passwords, :film_firstnames], :unique => false)
 				add_index(:country_addresses, [:length_names], :unique => false)
  end 
end
