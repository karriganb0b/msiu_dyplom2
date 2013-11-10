class CreateFilmFilms < ActiveRecord::Migration
	 def change
	   create_table :film_films do |t|
t.string :password_addresses, :default => "mDcBUbPu", array: false
   t.decimal :firstname_films, :default => 1.3527359894921114, precision: 9, scale: 5
   t.date :role_addresses, :default => Date.new(1999,10,12), null: true
   t.text :length_firstnames, :default => :country_roles, limit: 1
   	end
				add_index(:film_films, [:length_firstnames], :unique => true)
  end 
end
