class CreateCountryFirstnames < ActiveRecord::Migration
	 def change
	   create_table :country_firstnames do |t|
t.boolean :film_names, :default => false
   t.text :email_countries, :default => :firstname_artists, null: true
   t.time :password_countries, :default => Time.new(2010, 10, 10, 22,20,9), null: true
   t.string :country_films, :default => "rKCERagf", null: true
   t.integer :password_songs, array: true
   	end
				add_index(:country_firstnames, [:email_countries], :unique => true)
  end 
end
