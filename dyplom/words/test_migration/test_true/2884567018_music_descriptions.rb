class CreateMusicDescriptions < ActiveRecord::Migration 
  def change 
    create_table :music_descriptions do |t| 
      t.integer :description_firstnames, :default => 94, array: false
      t.decimal :length_musics, :default => 8.403621875278088, null: true
      t.boolean :artist_artists, :default => false
      t.date :firstname_films, :default => Date.new(2006,8,14), null: false
      t.time :artist_descriptions, :default => Time.new(2010, 10, 10, 19,56,21), null: false
   end
end
end
