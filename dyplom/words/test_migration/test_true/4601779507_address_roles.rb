class CreateAddressRoles < ActiveRecord::Migration 
  def change 
    create_table :address_roles do |t| 
      t.string :email_musics, :default => "JwqeoRUc", null: true
      t.decimal :name_songs, :default => 1.5128067323609233, precision: 4, scale: 2
      t.date :music_addresses, array: true
      t.text :description_musics, :default => :artist_names, limit: 1
      t.time :email_songs, array: true
      t.decimal :email_lengths, :default => 3.5565634288208994, precision: 8, scale: 2
   end
end
end
