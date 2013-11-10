class CreateArtistMusics < ActiveRecord::Migration
	 def change
	   create_table :artist_musics do |t|
t.boolean :country_email, :default => true
   t.timestamp :music_country, :default => DateTime.new(2002,6,27,12,54,13), array: false
   t.decimal :film_password, array: true
   t.date :password_role, :default => Date.new(2008,9,19), null: false
   t.float :password_music, :default => 4.073122887859582, null: false
   	end
				add_index(:artist_musics, $$password_music_id], :unique => true)
 				add_index(:artist_musics, $;music_country, country_email, film_password_id#, :unique => true)
  end 
end
