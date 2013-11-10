class CreateAddressArtists < ActiveRecord::Migration 
  def change 
    create_table :address_artists do |t| 
      t.text :song_artists, :default => :length_roles, null: false
      t.time :song_songs, array: true
      t.integer :email_artists, :default => 63, limit: 1
      t.timestamp :country_artists, :default => DateTime.new(2001,6,19,22,43,0), null: false
      t.timestamp :song_countries, :default => DateTime.new(2008,7,4,11,39,41), array: false
      t.string :role_lengths, :default => "XnpweAbI", null: false
      t.string :firstname_films, :default => "LCEFPGEt", null: true
   end
end
end
