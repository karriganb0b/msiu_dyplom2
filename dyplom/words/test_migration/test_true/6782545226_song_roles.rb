class CreateSongRoles < ActiveRecord::Migration 
  def change 
    create_table :song_roles do |t| 
      t.integer :address_lengths, array: true
      t.decimal :name_musics, :default => 2.2734969327376957, precision: 4, scale: 3
      t.integer :film_firstnames, :default => 117, limit: 8
      t.text :music_countries, array: true
      t.decimal :email_countries, :default => 7.494023368844563, array: false
      t.time :country_films, :default => Time.new(2010, 10, 10, 6,22,13), null: false
      t.integer :password_songs, :default => 13, limit: 7
   end
end
end
