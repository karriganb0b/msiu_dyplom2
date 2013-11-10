class CreateEmailSongs < ActiveRecord::Migration 
  def change 
    create_table :email_songs do |t| 
      t.string :role_songs, array: true
      t.timestamp :email_firstnames, :default => DateTime.new(2004,11,21,17,43,54), null: true
      t.boolean :artist_names, :default => true
      t.time :password_passwords, :default => Time.new(2010, 10, 10, 10,50,30), null: false
      t.boolean :name_artists, :default => false
   end
end
end
