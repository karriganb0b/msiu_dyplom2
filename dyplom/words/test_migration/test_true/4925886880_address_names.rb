class CreateAddressNames < ActiveRecord::Migration 
  def change 
    create_table :address_names do |t| 
      t.timestamp :description_lengths, :default => DateTime.new(2001,6,2,0,16,51), null: true
      t.integer :artist_songs, array: true
      t.integer :country_countries, :default => 176, limit: 7
      t.float :email_musics, array: true
      t.string :song_roles, :default => "zXMyFMiu", null: false
      t.float :film_emails, :default => 3.6373515556886398, null: true
   end
end
end
