class CreateRoleFilms < ActiveRecord::Migration 
  def change 
    create_table :role_films do |t| 
      t.decimal :address_passwords, :default => 1.6541476781482565, precision: 3, scale: 2
      t.string :description_musics, :default => "swJHEIjS", null: false
      t.boolean :email_firstnames, :default => true
      t.timestamp :description_passwords, array: true
      t.string :length_musics, :default => "SxnTNVmG", null: false
      t.decimal :country_songs, :default => 2.6308766577837135, null: true
      t.string :address_films, array: true
   end
end
end
