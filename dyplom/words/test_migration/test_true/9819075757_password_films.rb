class CreatePasswordFilms < ActiveRecord::Migration 
  def change 
    create_table :password_films do |t| 
      t.text :description_names, :default => :country_countries, limit: 1
      t.date :email_songs, array: true
      t.boolean :description_firstnames, :default => true
      t.float :music_passwords, array: true
      t.text :password_descriptions, :default => :artist_descriptions, array: false
   end
end
end
