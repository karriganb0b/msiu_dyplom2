class CreateSongMusics < ActiveRecord::Migration 
  def change 
    create_table :song_musics do |t| 
      t.string :length_lengths, :default => "gtcvUxSw", limit: 1
      t.integer :firstname_artists, :default => 67, null: false
      t.string :song_roles, :default => "FHKIcKyu", null: false
      t.decimal :address_songs, :default => 2.7963167077686593, null: true
      t.time :country_addresses, :default => Time.new(2010, 10, 10, 8,14,5), null: false
      t.integer :firstname_addresses, :default => 248, null: true
   end
end
end
