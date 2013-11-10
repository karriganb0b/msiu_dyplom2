class CreatePasswordFilms < ActiveRecord::Migration
	 def change
	   create_table :password_films do |t|
t.float :country_passwords, :default => 3.638561015280948, null: true
   t.string :password_addresses, array: true
   t.time :song_musics, array: true
   t.integer :firstname_films, :default => 165, limit: 1
   	end
				add_index(:password_films, [:song_musics, :firstname_films, :password_addresses], :unique => false)
 				add_index(:password_films, [:country_passwords], :unique => true)
  end 
end
