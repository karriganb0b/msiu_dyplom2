class CreateRoleCountries < ActiveRecord::Migration
	 def change
	   create_table :role_countries do |t|
t.text :name_passwords, :default => :artist_artists, null: true
   t.integer :password_roles, :default => 208, limit: 1
   t.text :music_roles, :default => :role_emails, limit: 107
   t.text :description_descriptions, :default => :length_films, null: true
   t.decimal :film_descriptions, :default => 5.162365048672656, precision: 10, scale: 4
   	end
				add_index(:role_countries, [:music_roles], :unique => false)
 				add_index(:role_countries, [:name_passwords, :password_roles], :unique => false)
 				add_index(:role_countries, [:description_descriptions], :unique => false)
  end 
end
