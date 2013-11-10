class CreateFirstnamePasswords < ActiveRecord::Migration 
  def change 
    create_table :firstname_passwords do |t| 
      t.date :music_addresses, :default => Date.new(2001,9,27), array: false
      t.text :length_firstnames, :default => :role_musics, array: false
      t.time :country_songs, :default => Time.new(2010, 10, 10, 6,17,52), null: true
      t.integer :music_emails, array: true
      t.time :address_countries, array: true
      t.time :role_films, :default => Time.new(2010, 10, 10, 1,11,50), array: false
      t.integer :email_names, :default => 215, array: false
   end
end
end
