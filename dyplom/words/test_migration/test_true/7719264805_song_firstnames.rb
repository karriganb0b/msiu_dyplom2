class CreateSongFirstnames < ActiveRecord::Migration 
  def change 
    create_table :song_firstnames do |t| 
      t.date :description_emails, array: true
      t.timestamp :email_musics, :default => DateTime.new(2012,4,29,18,59,15), null: true
      t.timestamp :music_firstnames, :default => DateTime.new(2014,8,21,8,6,36), array: false
      t.boolean :film_firstnames, :default => true
      t.time :address_passwords, :default => Time.new(2010, 10, 10, 14,5,6), array: false
      t.text :name_names, :default => :country_musics, limit: 1
      t.time :firstname_countries, :default => Time.new(2010, 10, 10, 16,45,38), array: false
   end
end
end
