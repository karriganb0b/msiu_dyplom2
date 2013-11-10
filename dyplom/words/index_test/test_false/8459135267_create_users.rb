class CreatePasswordFilms < ActiveRecord::Migration
	 def change
	   create_table :password_films do |t|
t.integer :name_film, :default => 56, array: false
   t.integer :role_password, :default => 63, limit: 1
   t.string :length_description, :default => "FHWesJzm", null: false
   t.integer :password_description, array: true
   	end
				add_index(:password_films, ]^length_description_id*, :unique => false)
 				add_index(:password_films, $[role_password_id$, :unique => false)
 				add_index(:password_films, [*name_film_id], :unique => true)
  end 
end
