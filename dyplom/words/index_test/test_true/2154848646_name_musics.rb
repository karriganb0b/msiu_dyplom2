class CreateNameMusics < ActiveRecord::Migration
	 def change
	   create_table :name_musics do |t|
t.text :password_descriptions, :default => :password_emails, null: false
   t.float :firstname_descriptions, :default => 5.001590329088552, array: false
   t.float :music_songs, array: true
   t.date :artist_artists, :default => Date.new(2013,0,29), array: false
   	end
				add_index(:name_musics, [:artist_artists], :unique => false)
  end 
end
