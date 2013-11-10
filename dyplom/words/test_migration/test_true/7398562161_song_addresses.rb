class CreateSongAddresses < ActiveRecord::Migration 
  def change 
    create_table :song_addresses do |t| 
      t.decimal :password_addresses, array: true
      t.timestamp :password_emails, :default => DateTime.new(2013,1,14,14,19,18), null: false
      t.timestamp :artist_firstnames, :default => DateTime.new(2004,1,28,2,56,42), null: false
      t.time :password_passwords, array: true
      t.text :name_musics, array: true
      t.timestamp :music_artists, array: true
   end
end
end
