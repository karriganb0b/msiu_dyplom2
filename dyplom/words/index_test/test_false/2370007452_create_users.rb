class CreateCountryPasswords < ActiveRecord::Migration
	 def change
	   create_table :country_passwords do |t|
t.string :music_address, :default => "LkmmZpEf", null: false
   t.string :description_address, :default => "zUxqiTlw", null: false
   t.text :address_role, :default => :music_email, limit: 178
   t.boolean :film_country, :default => false
   	end
				add_index(:country_passwords, $#description_address_id;, :unique => true)
  end 
end
