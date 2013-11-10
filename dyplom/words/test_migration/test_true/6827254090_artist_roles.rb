class CreateArtistRoles < ActiveRecord::Migration 
  def change 
    create_table :artist_roles do |t| 
      t.time :description_emails, :default => Time.new(2010, 10, 10, 13,17,9), null: false
      t.decimal :email_addresses, array: true
      t.decimal :password_musics, array: true
      t.text :song_firstnames, :default => :password_countries, null: true
      t.integer :music_descriptions, :default => 117, limit: 2
      t.float :song_songs, array: true
   end
end
end
