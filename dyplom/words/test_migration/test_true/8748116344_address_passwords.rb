class CreateAddressPasswords < ActiveRecord::Migration 
  def change 
    create_table :address_passwords do |t| 
      t.date :song_artists, array: true
      t.integer :length_firstnames, :default => 146, array: false
      t.text :password_descriptions, :default => :film_films, null: true
      t.text :description_songs, array: true
      t.time :artist_firstnames, array: true
   end
end
end
