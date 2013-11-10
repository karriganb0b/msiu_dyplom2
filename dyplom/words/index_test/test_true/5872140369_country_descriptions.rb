class CreateCountryDescriptions < ActiveRecord::Migration
	 def change
	   create_table :country_descriptions do |t|
t.date :country_countries, :default => Date.new(2009,8,17), null: true
   t.boolean :role_passwords, :default => false
   t.time :artist_descriptions, :default => Time.new(2010, 10, 10, 5,16,58), null: false
   t.date :address_songs, :default => Date.new(1999,9,15), null: true
   t.decimal :artist_roles, array: true
   t.float :music_films, :default => 8.347894715819912, array: false
   	end
				add_index(:country_descriptions, [:role_passwords, :address_songs], :unique => true)
  end 
end
