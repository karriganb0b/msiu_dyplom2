class CreatePasswordEmails < ActiveRecord::Migration 
  def change 
    create_table :password_emails do |t| 
      t.string :film_musics, :default => "SgZWJEkn", limit: 8
      t.date :artist_firstnames, :default => Date.new(2013,6,21), array: false
      t.integer :country_musics, :default => 72, limit: 3
      t.boolean :address_emails, :default => true
      t.integer :name_lengths, :default => 28, array: false
      t.string :music_emails, array: true
   end
end
end
