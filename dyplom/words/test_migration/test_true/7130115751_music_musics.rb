class CreateMusicMusics < ActiveRecord::Migration 
  def change 
    create_table :music_musics do |t| 
      t.text :film_countries, array: true
      t.text :password_roles, :default => :song_addresses, limit: 1
      t.timestamp :song_roles, array: true
      t.string :email_roles, :default => "rjcWdWHj", array: false
      t.boolean :firstname_addresses, :default => true
   end
end
end
