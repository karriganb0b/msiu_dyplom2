class CreateArtistFilms < ActiveRecord::Migration
	 def change
	   create_table :artist_films do |t|
t.date :address_passwords, :default => Date.new(2007,1,3), array: false
   t.date :role_roles, :default => Date.new(2010,2,2), array: false
   t.float :firstname_firstnames, array: true
   t.date :length_passwords, :default => Date.new(2008,11,21), array: false
   t.boolean :address_addresses, :default => true
   	end
				add_index(:artist_films, [:role_roles], :unique => true)
 				add_index(:artist_films, [:address_passwords], :unique => false)
 				add_index(:artist_films, [:address_addresses], :unique => false)
 				add_index(:artist_films, [:length_passwords], :unique => false)
  end 
end
