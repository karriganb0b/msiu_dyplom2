class CreateSongDescriptions < ActiveRecord::Migration 
  def change 
    create_table :song_descriptions do |t| 
      t.decimal :email_artists, :default => 0.4702695273879348, precision: 8, scale: 1
      t.date :password_emails, :default => Date.new(2000,4,17), array: false
      t.timestamp :password_countries, array: true
      t.time :description_musics, array: true
      t.integer :password_passwords, :default => 102, null: true
   end
end
end
