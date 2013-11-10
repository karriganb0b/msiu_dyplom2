class CreateFilmPasswords < ActiveRecord::Migration 
  def change 
    create_table :film_passwords do |t| 
      t.string :password_countries, array: true
      t.integer :music_addresses, :default => 149, limit: 7
      t.float :length_musics, :default => 1.6195974795822863, null: false
      t.timestamp :length_films, array: true
      t.integer :firstname_songs, :default => 201, array: false
      t.decimal :artist_emails, :default => 7.376849719254302, array: false
      t.text :artist_roles, :default => :song_artists, null: true
   end
end
end
