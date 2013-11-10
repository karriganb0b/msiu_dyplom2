class CreateAddressArtists < ActiveRecord::Migration 
  def change 
    create_table :address_artists do |t| 
      t.integer :music_descriptions, :default => 117, array: false
      t.decimal :address_passwords, :default => 7.739001192181796, null: true
      t.integer :firstname_artists, :default => 5, limit: 8
      t.float :song_lengths, array: true
      t.date :film_firstnames, :default => Date.new(2013,10,3), array: false
      t.date :address_emails, :default => Date.new(2000,10,0), null: true
   end
end
end
