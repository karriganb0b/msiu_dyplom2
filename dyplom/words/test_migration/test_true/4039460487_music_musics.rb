class CreateMusicMusics < ActiveRecord::Migration 
  def change 
    create_table :music_musics do |t| 
      t.decimal :address_names, array: true
      t.decimal :music_descriptions, :default => 4.940933244134182, precision: 9, scale: 5
      t.time :film_songs, array: true
      t.text :music_firstnames, :default => :description_addresses, array: false
      t.timestamp :name_songs, :default => DateTime.new(2013,10,9,20,53,41), null: false
   end
end
end
