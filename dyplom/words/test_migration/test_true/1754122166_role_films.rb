class CreateRoleFilms < ActiveRecord::Migration 
  def change 
    create_table :role_films do |t| 
      t.float :name_passwords, :default => 6.927115844720351, null: false
      t.boolean :address_passwords, :default => true
      t.string :artist_musics, :default => "OTZZCvZt", null: false
      t.timestamp :length_addresses, :default => DateTime.new(2006,7,20,0,47,14), null: true
      t.integer :role_addresses, :default => 95, array: false
   end
end
end
