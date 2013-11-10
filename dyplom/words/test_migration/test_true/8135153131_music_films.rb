class CreateMusicFilms < ActiveRecord::Migration 
  def change 
    create_table :music_films do |t| 
      t.integer :email_names, :default => 43, limit: 1
      t.decimal :music_countries, :default => 6.304195198820683, null: true
      t.integer :email_names, array: true
      t.boolean :film_descriptions, :default => true
      t.string :email_roles, :default => "oEVoULtB", null: false
      t.time :password_lengths, array: true
   end
end
end
