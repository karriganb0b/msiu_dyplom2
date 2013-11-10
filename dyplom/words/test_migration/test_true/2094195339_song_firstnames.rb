class CreateSongFirstnames < ActiveRecord::Migration 
  def change 
    create_table :song_firstnames do |t| 
      t.decimal :music_roles, array: true
      t.timestamp :name_descriptions, :default => DateTime.new(2013,11,28,10,22,22), array: false
      t.integer :length_artists, :default => 149, array: false
      t.float :film_songs, :default => 8.01874611509693, null: true
      t.time :artist_addresses, :default => Time.new(2010, 10, 10, 7,59,53), array: false
      t.decimal :length_countries, :default => 6.513928193529798, precision: 6, scale: 1
   end
end
end
