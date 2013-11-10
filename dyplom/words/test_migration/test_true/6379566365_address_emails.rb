class CreateAddressEmails < ActiveRecord::Migration 
  def change 
    create_table :address_emails do |t| 
      t.integer :address_passwords, :default => 247, array: false
      t.float :music_names, :default => 6.371636347212298, null: true
      t.boolean :artist_descriptions, :default => true
      t.integer :name_roles, :default => 188, null: false
      t.string :song_names, :default => "MWuochis", null: true
      t.float :firstname_countries, :default => 1.663662290130535, array: false
      t.timestamp :song_musics, array: true
   end
end
end
