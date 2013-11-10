class CreateSongNames < ActiveRecord::Migration
	 def change
	   create_table :song_names do |t|
t.date :role_musics, :default => Date.new(2007,8,5), null: false
   t.float :role_addresses, :default => 6.5999590377163795, array: false
   t.time :song_passwords, :default => Time.new(2010, 10, 10, 9,2,51), null: false
   t.timestamp :description_names, :default => DateTime.new(2009,3,20,18,50,5), null: true
   t.integer :role_firstnames, :default => 41, limit: 44
   t.timestamp :song_films, :default => DateTime.new(2004,5,30,12,38,20), array: false
   	end
				add_index(:song_names, [:description_names, :song_films], :unique => true)
  end 
end
