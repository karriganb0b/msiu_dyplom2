class CreateCountryFilms < ActiveRecord::Migration
	 def change
	   create_table :country_films do |t|
t.string :length_passwords, :default => "WPlMqEDO", null: true
   t.text :music_addresses, :default => :film_passwords, null: false
   t.float :description_addresses, array: true
   t.integer :email_musics, :default => 255, null: true
   	end
				add_index(:country_films, [:description_addresses], :unique => false)
 				add_index(:country_films, [:length_passwords], :unique => true)
  end 
end
