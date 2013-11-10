class CreateMusicPasswords < ActiveRecord::Migration 
  def change 
    create_table :music_passwords do |t| 
      t.text :email_descriptions, array: true
      t.integer :firstname_descriptions, :default => 75, limit: 1
      t.time :description_songs, array: true
      t.integer :length_artists, array: true
      t.float :music_lengths, :default => 1.5087868419170851, null: true
      t.float :role_lengths, :default => 6.764019991886577, array: false
      t.decimal :length_films, :default => 6.50838362337371, precision: 12, scale: 5
   end
end
end
