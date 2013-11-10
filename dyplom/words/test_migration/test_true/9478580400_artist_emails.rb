class CreateArtistEmails < ActiveRecord::Migration 
  def change 
    create_table :artist_emails do |t| 
      t.date :password_roles, :default => Date.new(2002,10,21), null: true
      t.text :firstname_lengths, :default => :artist_artists, null: true
      t.float :artist_descriptions, :default => 8.656156015200056, null: true
      t.time :description_songs, :default => Time.new(2010, 10, 10, 8,13,56), array: false
      t.timestamp :description_songs, :default => DateTime.new(2003,1,7,7,1,4), array: false
   end
end
end
