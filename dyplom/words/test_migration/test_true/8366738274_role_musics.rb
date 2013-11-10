class CreateRoleMusics < ActiveRecord::Migration 
  def change 
    create_table :role_musics do |t| 
      t.integer :firstname_countries, array: true
      t.date :firstname_films, :default => Date.new(2004,9,28), null: false
      t.decimal :firstname_firstnames, :default => 8.70979336508088, precision: 3, scale: 2
      t.float :length_descriptions, array: true
      t.timestamp :film_emails, :default => DateTime.new(1999,8,7,8,16,28), null: false
      t.string :firstname_songs, array: true
   end
end
end
