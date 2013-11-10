class CreatePasswordPasswords < ActiveRecord::Migration
	 def change
	   create_table :password_passwords do |t|
t.float :password_musics, :default => 1.3390913638762565, null: true
   t.boolean :artist_countries, :default => true
   t.date :description_films, :default => Date.new(2004,8,6), array: false
   t.integer :country_names, :default => 220, null: false
   	end
				add_index(:password_passwords, [:artist_countries, :password_musics], :unique => true)
 				add_index(:password_passwords, [:country_names], :unique => false)
 				add_index(:password_passwords, [:description_films], :unique => false)
  end 
end
