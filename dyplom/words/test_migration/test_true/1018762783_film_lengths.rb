class CreateFilmLengths < ActiveRecord::Migration 
  def change 
    create_table :film_lengths do |t| 
      t.integer :song_songs, :default => 211, array: false
      t.float :role_films, :default => 2.439610838610613, null: true
      t.time :email_firstnames, :default => Time.new(2010, 10, 10, 22,36,10), array: false
      t.text :artist_countries, :default => :description_musics, limit: 1
      t.date :role_countries, :default => Date.new(2014,0,2), array: false
      t.text :address_lengths, :default => :email_musics, limit: 8
      t.boolean :firstname_musics, :default => false
   end
end
end
