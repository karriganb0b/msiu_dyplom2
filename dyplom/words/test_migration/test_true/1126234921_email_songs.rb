class CreateEmailSongs < ActiveRecord::Migration 
  def change 
    create_table :email_songs do |t| 
      t.text :length_addresses, :default => :artist_roles, null: true
      t.boolean :role_songs, :default => false
      t.date :address_descriptions, :default => Date.new(2006,4,0), array: false
      t.float :song_addresses, :default => 8.940874039871883, null: false
      t.timestamp :role_lengths, :default => DateTime.new(2001,5,19,1,18,18), array: false
   end
end
end
