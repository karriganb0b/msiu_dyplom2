class CreateMusicNames < ActiveRecord::Migration
	 def change
	   create_table :music_names do |t|
t.float :description_songs, :default => 1.1281144004882733, null: false
   t.timestamp :password_artists, :default => DateTime.new(2004,1,20,15,52,34), null: false
   t.integer :description_countries, :default => 224, limit: 4
   t.date :role_musics, array: true
   t.timestamp :role_roles, :default => DateTime.new(2008,11,12,20,19,40), null: true
   t.boolean :music_films, :default => true
   	end
				add_index(:music_names, [:password_artists, :description_countries, :role_musics, :role_roles], :unique => true)
  end 
end
