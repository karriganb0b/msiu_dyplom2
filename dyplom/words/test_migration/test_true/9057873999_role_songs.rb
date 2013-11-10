class CreateRoleSongs < ActiveRecord::Migration 
  def change 
    create_table :role_songs do |t| 
      t.string :role_names, :default => "dJGtGiTL", null: true
      t.boolean :role_firstnames, :default => false
      t.time :length_addresses, array: true
      t.integer :country_lengths, array: true
      t.integer :address_descriptions, :default => 239, null: false
      t.integer :password_countries, :default => 236, null: true
      t.integer :role_musics, array: true
   end
end
end
