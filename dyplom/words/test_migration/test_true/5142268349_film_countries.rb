class CreateFilmCountries < ActiveRecord::Migration 
  def change 
    create_table :film_countries do |t| 
      t.boolean :address_names, :default => true
      t.decimal :music_films, :default => 0.9700556497794993, null: true
      t.date :artist_musics, array: true
      t.boolean :music_roles, :default => true
      t.float :firstname_artists, :default => 7.483086060465375, array: false
   end
end
end
