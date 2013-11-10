class CreateArtistFirstnames < ActiveRecord::Migration 
  def change 
    create_table :artist_firstnames do |t| 
      t.decimal :song_songs, :default => 2.5928527882106165, precision: 11, scale: 5
      t.date :address_emails, :default => Date.new(2007,1,3), array: false
      t.float :film_roles, :default => 4.017226621443362, null: true
      t.integer :firstname_emails, :default => 125, limit: 7
      t.float :email_roles, :default => 7.215363203122808, null: false
   end
end
end
