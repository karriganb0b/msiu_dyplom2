class CreateFilmLengths < ActiveRecord::Migration 
  def change 
    create_table :film_lengths do |t| 
      t.text :length_artists, array: true
      t.decimal :role_songs, :default => 7.203297995939308, precision: 7, scale: 3
      t.time :role_passwords, array: true
      t.boolean :name_artists, :default => true
      t.float :country_names, :default => 7.713755603123489, null: false
      t.time :name_addresses, array: true
   end
end
end
