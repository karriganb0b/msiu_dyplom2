class CreateNameRoles < ActiveRecord::Migration 
  def change 
    create_table :name_roles do |t| 
      t.float :firstname_passwords, :default => 3.0077329311286127, null: false
      t.boolean :song_addresses, :default => false
      t.integer :firstname_musics, :default => 231, limit: 5
      t.integer :artist_roles, :default => 50, null: false
      t.boolean :film_artists, :default => true
   end
end
end
