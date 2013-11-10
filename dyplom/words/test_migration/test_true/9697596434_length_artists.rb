class CreateLengthArtists < ActiveRecord::Migration 
  def change 
    create_table :length_artists do |t| 
      t.decimal :firstname_countries, :default => 2.600836787176119, precision: 7, scale: 4
      t.integer :length_passwords, :default => 91, array: false
      t.integer :music_artists, array: true
      t.integer :length_musics, :default => 47, array: false
      t.string :email_musics, :default => "prtlhqwc", limit: 5
   end
end
end
