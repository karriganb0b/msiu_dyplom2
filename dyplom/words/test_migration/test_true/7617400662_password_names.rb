class CreatePasswordNames < ActiveRecord::Migration 
  def change 
    create_table :password_names do |t| 
      t.decimal :email_artists, :default => 2.791483812228412, null: false
      t.float :artist_artists, :default => 8.771927882013475, null: false
      t.text :artist_roles, :default => :length_firstnames, limit: 5
      t.timestamp :address_songs, :default => DateTime.new(2001,11,24,6,4,52), null: false
      t.string :length_musics, array: true
   end
end
end
