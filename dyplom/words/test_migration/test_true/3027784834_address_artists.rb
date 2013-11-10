class CreateAddressArtists < ActiveRecord::Migration 
  def change 
    create_table :address_artists do |t| 
      t.time :email_songs, :default => Time.new(2010, 10, 10, 10,7,34), null: false
      t.date :address_emails, :default => Date.new(2006,7,8), null: false
      t.string :email_songs, :default => "HxDDsmaU", array: false
      t.time :song_lengths, array: true
      t.date :country_lengths, :default => Date.new(2000,2,0), null: false
      t.decimal :role_artists, :default => 8.876691183654454, precision: 9, scale: 2
      t.string :role_musics, array: true
   end
end
end
