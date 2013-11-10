class CreateNameSongs < ActiveRecord::Migration 
  def change 
    create_table :name_songs do |t| 
      t.decimal :firstname_artists, :default => 8.2371607686584, array: false
      t.string :film_artists, :default => "agGMfGPu", null: false
      t.text :role_names, :default => :password_names, array: false
      t.decimal :password_lengths, :default => 0.6865256945100886, array: false
      t.time :name_films, array: true
      t.decimal :password_passwords, :default => 1.243459443037977, precision: 6, scale: 3
      t.integer :role_addresses, :default => 95, array: false
   end
end
end
