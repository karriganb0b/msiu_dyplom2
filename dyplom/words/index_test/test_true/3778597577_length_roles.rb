class CreateLengthRoles < ActiveRecord::Migration
	 def change
	   create_table :length_roles do |t|
t.boolean :description_musics, :default => false
   t.float :firstname_films, :default => 0.7522569061405465, null: true
   t.integer :music_artists, array: true
   t.time :firstname_musics, array: true
   	end
				add_index(:length_roles, [:firstname_musics], :unique => true)
 				add_index(:length_roles, [:firstname_films], :unique => false)
  end 
end
