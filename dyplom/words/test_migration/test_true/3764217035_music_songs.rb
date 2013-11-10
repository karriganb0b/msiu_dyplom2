class CreateMusicSongs < ActiveRecord::Migration 
  def change 
    create_table :music_songs do |t| 
      t.string :password_musics, :default => "vAnQRBMF", limit: 1
      t.string :email_lengths, :default => "SYWYaziL", limit: 17
      t.timestamp :role_films, :default => DateTime.new(1999,8,22,16,7,39), null: false
      t.decimal :firstname_songs, :default => 0.4903283581296991, precision: 6, scale: 2
      t.integer :artist_roles, :default => 15, null: true
   end
end
end
