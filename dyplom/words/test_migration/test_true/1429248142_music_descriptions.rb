class CreateMusicDescriptions < ActiveRecord::Migration 
  def change 
    create_table :music_descriptions do |t| 
      t.timestamp :film_names, :default => DateTime.new(2001,9,30,12,46,59), null: true
      t.float :description_roles, :default => 4.162206689341094, null: true
      t.time :song_artists, :default => Time.new(2010, 10, 10, 11,47,23), null: false
      t.date :address_roles, :default => Date.new(2012,6,15), null: true
      t.time :song_artists, :default => Time.new(2010, 10, 10, 22,44,18), null: false
      t.text :film_songs, array: true
      t.string :address_firstnames, :default => "gvNlYNlB", null: true
   end
end
end
