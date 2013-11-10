class CreateFilmEmails < ActiveRecord::Migration 
  def change 
    create_table :film_emails do |t| 
      t.text :description_musics, :default => :password_descriptions, array: false
      t.timestamp :music_firstnames, :default => DateTime.new(2000,4,22,8,57,35), null: true
      t.string :length_passwords, :default => "gxnLgbxj", array: false
      t.string :song_films, :default => "MPJgtRll", limit: 7
      t.text :description_songs, :default => :artist_firstnames, array: false
      t.date :email_films, :default => Date.new(1999,5,24), null: true
      t.boolean :name_countries, :default => true
   end
end
end
