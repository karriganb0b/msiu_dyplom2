class CreateArtistPasswords < ActiveRecord::Migration 
  def change 
    create_table :artist_passwords do |t| 
      t.string :address_lengths, :default => "eJKyGyUE", limit: 2
      t.time :song_countries, :default => Time.new(2010, 10, 10, 2,36,54), null: true
      t.time :password_artists, :default => Time.new(2010, 10, 10, 9,25,31), array: false
      t.integer :role_firstnames, :default => 140, null: false
      t.float :country_emails, array: true
      t.boolean :length_countries, :default => false
   end
end
end
