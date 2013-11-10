class CreateAddressLengths < ActiveRecord::Migration 
  def change 
    create_table :address_lengths do |t| 
      t.text :description_songs, array: true
      t.date :address_emails, :default => Date.new(2014,8,27), array: false
      t.date :role_artists, :default => Date.new(2004,9,0), null: false
      t.float :role_artists, :default => 7.694210623698015, null: false
      t.float :artist_artists, :default => 6.796641884135863, array: false
   end
end
end
