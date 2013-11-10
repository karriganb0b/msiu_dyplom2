class CreateMusicSongs < ActiveRecord::Migration
	 def change
	   create_table :music_songs do |t|
t.integer :name_roles, array: true
   t.decimal :country_songs, :default => 5.375746208754555, array: false
   t.float :description_songs, array: true
   t.date :name_addresses, :default => Date.new(2006,11,24), array: false
   t.timestamp :song_names, :default => DateTime.new(2013,9,25,13,43,1), array: false
   	end
				add_index(:music_songs, [:name_addresses, :song_names], :unique => true)
 				add_index(:music_songs, [:name_roles], :unique => false)
  end 
end
