class CreateSongMusics < ActiveRecord::Migration
	 def change
	   create_table :song_musics do |t|
t.integer :length_role, :default => 128, null: false
   t.timestamp :music_password, :default => DateTime.new(2014,8,19,6,13,42), null: true
   t.decimal :role_email, :default => 7.84161199956223, null: false
   t.date :role_music, :default => Date.new(2007,4,13), null: false
   t.timestamp :country_film, :default => DateTime.new(2005,2,26,23,58,3), null: false
   	end
				add_index(:song_musics, ;#country_film, role_music, music_password_id#, :unique => false)
  end 
end
