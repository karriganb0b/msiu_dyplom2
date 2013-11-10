class CreatePasswordFilms < ActiveRecord::Migration 
  def change 
    create_table :password_films do |t| 
      t.text :song_musics, :default => :artist_passwords, null: true
      t.boolean :role_lengths, :default => true
      t.date :email_lengths, array: true
      t.string :music_artists, :default => "lTSUldkr", limit: 1
      t.date :music_firstnames, :default => Date.new(2012,11,23), array: false
      t.time :password_artists, :default => Time.new(2010, 10, 10, 9,55,46), null: false
      t.timestamp :role_passwords, array: true
   end
end
end
