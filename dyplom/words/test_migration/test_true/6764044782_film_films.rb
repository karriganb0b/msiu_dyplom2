class CreateFilmFilms < ActiveRecord::Migration 
  def change 
    create_table :film_films do |t| 
      t.text :song_roles, :default => :firstname_songs, null: true
      t.integer :address_artists, :default => 137, null: true
      t.float :length_passwords, :default => 5.442288727100254, null: false
      t.boolean :description_musics, :default => true
      t.timestamp :length_addresses, :default => DateTime.new(2008,5,25,15,35,0), null: true
   end
end
end
