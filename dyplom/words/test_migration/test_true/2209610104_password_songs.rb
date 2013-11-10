class CreatePasswordSongs < ActiveRecord::Migration 
  def change 
    create_table :password_songs do |t| 
      t.time :address_musics, :default => Time.new(2010, 10, 10, 7,19,27), null: true
      t.text :film_countries, :default => :length_lengths, null: true
      t.date :name_films, :default => Date.new(2005,5,23), null: false
      t.time :song_descriptions, array: true
      t.timestamp :role_roles, :default => DateTime.new(2003,2,14,1,26,12), null: false
      t.date :country_artists, :default => Date.new(2012,1,26), array: false
   end
end
end
