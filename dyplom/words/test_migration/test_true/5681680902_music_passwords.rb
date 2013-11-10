class CreateMusicPasswords < ActiveRecord::Migration 
  def change 
    create_table :music_passwords do |t| 
      t.string :film_films, :default => "HDpnHgke", array: false
      t.boolean :length_passwords, :default => false
      t.text :song_addresses, :default => :length_roles, limit: 6
      t.timestamp :name_passwords, :default => DateTime.new(2005,1,19,17,59,30), array: false
      t.timestamp :film_passwords, :default => DateTime.new(2004,10,26,0,44,49), null: false
      t.integer :role_films, :default => 141, limit: 175
      t.string :role_songs, :default => "jqgYfERd", limit: 136
   end
end
end
