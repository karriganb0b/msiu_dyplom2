class CreateSongArtists < ActiveRecord::Migration 
  def change 
    create_table :song_artists do |t| 
      t.text :password_emails, array: true
      t.string :film_musics, :default => "PCMQjkvu", limit: 90
      t.date :film_roles, array: true
      t.string :email_songs, array: true
      t.timestamp :name_emails, :default => DateTime.new(1999,3,29,17,52,27), null: true
      t.time :name_emails, array: true
      t.boolean :film_artists, :default => true
   end
end
end
