class CreateMusicCountries < ActiveRecord::Migration 
  def change 
    create_table :music_countries do |t| 
      t.text :country_names, :default => :email_musics, null: false
      t.string :email_passwords, :default => "uiwQnWUp", array: false
      t.integer :artist_addresses, array: true
      t.timestamp :artist_films, :default => DateTime.new(2003,11,23,7,20,15), array: false
      t.integer :song_roles, :default => 222, null: false
      t.text :film_firstnames, :default => :firstname_emails, array: false
   end
end
end
