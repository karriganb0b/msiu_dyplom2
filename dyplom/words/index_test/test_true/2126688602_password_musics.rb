class CreatePasswordMusics < ActiveRecord::Migration
	 def change
	   create_table :password_musics do |t|
t.string :music_musics, :default => "eWSnMJgm", limit: 1
   t.float :country_roles, :default => 7.68272737110621, array: false
   t.boolean :email_artists, :default => false
   t.string :description_addresses, :default => "JxRMuJCp", limit: 1
   t.time :artist_roles, :default => Time.new(2010, 10, 10, 13,3,51), array: false
   t.time :country_musics, :default => Time.new(2010, 10, 10, 2,48,57), array: false
   	end
				add_index(:password_musics, [:music_musics], :unique => true)
 				add_index(:password_musics, [:description_addresses], :unique => true)
  end 
end
