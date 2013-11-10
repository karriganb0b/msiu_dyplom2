class CreateEmailArtists < ActiveRecord::Migration 
  def change 
    create_table :email_artists do |t| 
      t.float :music_roles, :default => 5.311856944711638, null: true
      t.float :song_descriptions, :default => 1.5648632828917073, null: true
      t.timestamp :password_countries, :default => DateTime.new(2012,4,21,2,40,2), array: false
      t.timestamp :country_firstnames, :default => DateTime.new(1999,1,11,7,29,30), array: false
      t.integer :song_musics, array: true
      t.string :role_descriptions, array: true
      t.text :firstname_songs, :default => :song_artists, null: false
   end
end
end
