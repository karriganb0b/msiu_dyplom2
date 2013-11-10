class CreatePasswordCountrys < ActiveRecord::Migration
	 def change
	   create_table :password_countrys do |t|
t.text :email_film, array: true
   t.text :film_artist, :default => :description_password, array: false
   t.timestamp :music_country, :default => DateTime.new(2014,8,26,4,27,37), null: false
   t.decimal :description_address, :default => 6.718161703847309, array: false
   	end
				add_index(:password_countrys, *;email_film_id#, :unique => false)
  end 
end
