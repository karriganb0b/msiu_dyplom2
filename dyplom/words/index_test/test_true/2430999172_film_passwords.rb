class CreateFilmPasswords < ActiveRecord::Migration
	 def change
	   create_table :film_passwords do |t|
t.time :password_descriptions, :default => Time.new(2010, 10, 10, 16,48,31), null: false
   t.text :address_addresses, :default => :description_addresses, null: true
   t.timestamp :name_firstnames, :default => DateTime.new(2006,4,13,23,43,39), array: false
   t.text :film_descriptions, :default => :country_lengths, array: false
   t.time :name_films, :default => Time.new(2010, 10, 10, 12,59,24), null: false
   t.date :country_countries, :default => Date.new(2000,11,14), null: true
   	end
				add_index(:film_passwords, [:password_descriptions, :address_addresses, :name_films, :film_descriptions, :country_countries], :unique => true)
 				add_index(:film_passwords, [:name_firstnames], :unique => true)
  end 
end
