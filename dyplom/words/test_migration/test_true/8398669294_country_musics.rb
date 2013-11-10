class CreateCountryMusics < ActiveRecord::Migration 
  def change 
    create_table :country_musics do |t| 
      t.time :role_countries, :default => Time.new(2010, 10, 10, 20,36,12), null: false
      t.boolean :name_films, :default => false
      t.time :song_musics, array: true
      t.float :film_countries, :default => 4.0702222747608925, array: false
      t.time :song_descriptions, :default => Time.new(2010, 10, 10, 12,53,45), null: true
      t.decimal :artist_descriptions, array: true
   end
end
end
