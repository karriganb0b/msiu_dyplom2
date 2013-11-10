class CreateNameAddresses < ActiveRecord::Migration
	 def change
	   create_table :name_addresses do |t|
t.time :address_songs, array: true
   t.date :email_films, :default => Date.new(2007,10,4), null: true
   t.boolean :name_lengths, :default => false
   t.time :description_emails, :default => Time.new(2010, 10, 10, 16,56,32), null: true
   t.date :country_countries, :default => Date.new(2010,1,22), null: false
   t.integer :length_names, :default => 242, null: false
   	end
				add_index(:name_addresses, [:description_emails, :address_songs], :unique => false)
 				add_index(:name_addresses, [:name_lengths], :unique => true)
  end 
end
