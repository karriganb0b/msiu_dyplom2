class CreateEmailAddresses < ActiveRecord::Migration 
  def change 
    create_table :email_addresses do |t| 
      t.timestamp :name_musics, :default => DateTime.new(2010,7,3,16,47,2), null: true
      t.date :music_firstnames, :default => Date.new(2011,10,0), null: true
      t.boolean :description_musics, :default => true
      t.text :role_films, :default => :description_songs, null: false
      t.timestamp :song_emails, :default => DateTime.new(2001,2,9,18,26,36), null: true
   end
end
end
