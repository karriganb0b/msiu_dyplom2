class CreateMusicLengths < ActiveRecord::Migration
	 def change
	   create_table :music_lengths do |t|
t.text :country_artists, :default => :song_emails, limit: 178
   t.decimal :country_descriptions, :default => 8.218288212326534, precision: 8, scale: 3
   t.integer :song_songs, :default => 14, limit: 59
   t.time :music_lengths, array: true
   	end
				add_index(:music_lengths, [:country_artists, :song_songs, :music_lengths], :unique => true)
  end 
end
