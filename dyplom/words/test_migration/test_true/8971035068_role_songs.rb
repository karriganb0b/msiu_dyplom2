class CreateRoleSongs < ActiveRecord::Migration 
  def change 
    create_table :role_songs do |t| 
      t.boolean :country_films, :default => true
      t.text :length_musics, :default => :music_passwords, null: true
      t.string :country_artists, :default => "LULInFuu", limit: 9
      t.string :music_firstnames, :default => "febskJVE", null: true
      t.string :song_lengths, :default => "QLZHPtsu", null: false
   end
end
end
