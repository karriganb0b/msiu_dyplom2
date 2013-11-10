class CreateEmailFirstnames < ActiveRecord::Migration 
  def change 
    create_table :email_firstnames do |t| 
      t.boolean :song_passwords, :default => false
      t.decimal :name_passwords, :default => 0.31677493309615246, array: false
      t.string :length_passwords, :default => "yYXjURjD", limit: 6
      t.boolean :password_songs, :default => true
      t.timestamp :role_artists, :default => DateTime.new(2011,8,26,1,26,54), null: false
      t.integer :artist_countries, :default => 235, limit: 1
   end
end
end
