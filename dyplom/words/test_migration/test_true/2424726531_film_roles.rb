class CreateFilmRoles < ActiveRecord::Migration 
  def change 
    create_table :film_roles do |t| 
      t.text :country_names, :default => :password_passwords, limit: 1
      t.float :music_passwords, :default => 8.983755367964847, array: false
      t.float :artist_artists, :default => 2.666733004332654, null: true
      t.text :country_emails, :default => :description_countries, limit: 6
      t.integer :email_films, :default => 58, null: false
      t.text :length_descriptions, :default => :artist_descriptions, array: false
   end
end
end
