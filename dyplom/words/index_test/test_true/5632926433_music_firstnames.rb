class CreateMusicFirstnames < ActiveRecord::Migration
	 def change
	   create_table :music_firstnames do |t|
t.date :address_lengths, :default => Date.new(2007,10,19), null: true
   t.timestamp :email_musics, :default => DateTime.new(2000,11,4,14,14,6), null: true
   t.string :length_songs, :default => "nFudKMvr", limit: 177
   t.text :name_descriptions, :default => :film_songs, limit: 3
   t.string :firstname_musics, :default => "rgJdDKCW", array: false
   t.decimal :country_lengths, :default => 8.036101966938618, precision: 6, scale: 5
   	end
				add_index(:music_firstnames, [:length_songs, :name_descriptions], :unique => false)
 				add_index(:music_firstnames, [:firstname_musics], :unique => false)
  end 
end
