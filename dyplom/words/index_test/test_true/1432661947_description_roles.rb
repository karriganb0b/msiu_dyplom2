class CreateDescriptionRoles < ActiveRecord::Migration
	 def change
	   create_table :description_roles do |t|
t.boolean :password_musics, :default => true
   t.date :role_artists, :default => Date.new(2007,4,29), null: true
   t.decimal :role_roles, :default => 0.45922512363356927, array: false
   t.timestamp :song_descriptions, array: true
   t.time :password_descriptions, :default => Time.new(2010, 10, 10, 10,55,45), null: true
   	end
				add_index(:description_roles, [:password_descriptions, :song_descriptions, :role_artists, :role_roles], :unique => true)
 				add_index(:description_roles, [:password_musics], :unique => false)
  end 
end
