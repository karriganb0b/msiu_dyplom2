class CreateMusicLengths < ActiveRecord::Migration
	 def change
	   create_table :music_lengths do |t|
t.decimal :length_address, :default => 8.872336686387959, null: false
   t.text :length_film, :default => :song_firstname, limit: 6
   t.decimal :email_song, :default => 8.317075920245658, null: true
   t.timestamp :music_role, :default => DateTime.new(2000,6,2,13,51,46), array: false
   t.integer :artist_description, :default => 187, limit: 1
   	end
				add_index(:music_lengths, %*artist_description_id#, :unique => true)
  end 
end
