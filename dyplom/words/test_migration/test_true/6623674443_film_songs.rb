class CreateFilmSongs < ActiveRecord::Migration 
  def change 
    create_table :film_songs do |t| 
      t.integer :music_roles, :default => 43, null: true
      t.boolean :firstname_firstnames, :default => true
      t.date :film_descriptions, array: true
      t.integer :role_firstnames, :default => 93, null: true
      t.string :length_lengths, :default => "mrscfdaR", limit: 2
   end
end
end
