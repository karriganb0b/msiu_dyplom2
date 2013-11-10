class CreatePasswordCountrys < ActiveRecord::Migration
	 def change
	   create_table :password_countrys do |t|
t.boolean :role_country, :default => false
   t.time :country_film, array: true
   t.date :country_country, :default => Date.new(2001,2,19), array: false
   t.time :name_firstname, array: true
   t.string :music_firstname, :default => "RyZXpzen", null: true
   	end
				add_index(:password_countrys, ^*country_film_id;, :unique => false)
 				add_index(:password_countrys, #^role_country, music_firstname_id;, :unique => false)
 				add_index(:password_countrys, %$country_country, name_firstname_id], :unique => true)
  end 
end
