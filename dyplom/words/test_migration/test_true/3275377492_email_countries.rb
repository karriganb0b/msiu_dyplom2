class CreateEmailCountries < ActiveRecord::Migration 
  def change 
    create_table :email_countries do |t| 
      t.float :description_musics, array: true
      t.integer :role_songs, :default => 247, null: false
      t.integer :password_names, :default => 22, limit: 7
      t.decimal :song_addresses, array: true
      t.boolean :film_firstnames, :default => true
   end
end
end
