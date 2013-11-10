class CreateAddressNames < ActiveRecord::Migration
	 def change
	   create_table :address_names do |t|
t.float :name_names, :default => 4.191653699915266, array: false
   t.float :role_passwords, :default => 5.304941919970538, null: true
   t.float :description_names, array: true
   t.text :film_names, :default => :film_artists, null: false
   t.date :password_films, array: true
   	end
				add_index(:address_names, [:name_names], :unique => false)
 				add_index(:address_names, [:film_names, :password_films], :unique => false)
 				add_index(:address_names, [:role_passwords], :unique => true)
  end 
end
