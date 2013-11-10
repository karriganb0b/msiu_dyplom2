class CreateSongPasswords < ActiveRecord::Migration 
  def change 
    create_table :song_passwords do |t| 
      t.integer :music_emails, :default => 20, null: true
      t.string :song_songs, :default => "gBgeKoPf", null: false
      t.decimal :country_addresses, :default => 2.2694390094033956, null: true
      t.integer :address_roles, :default => 203, null: false
      t.timestamp :description_emails, :default => DateTime.new(2003,8,21,7,14,44), null: false
      t.float :song_names, array: true
   end
end
end
