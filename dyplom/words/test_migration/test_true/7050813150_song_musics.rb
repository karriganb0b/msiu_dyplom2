class CreateSongMusics < ActiveRecord::Migration 
  def change 
    create_table :song_musics do |t| 
      t.integer :song_passwords, array: true
      t.integer :name_countries, array: true
      t.date :description_passwords, :default => Date.new(2002,7,2), null: true
      t.timestamp :country_songs, :default => DateTime.new(2003,10,29,9,4,28), null: true
      t.timestamp :email_films, :default => DateTime.new(2008,6,17,2,18,38), null: true
   end
end
end
