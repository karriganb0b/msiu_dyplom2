class CreateFirstnameArtists < ActiveRecord::Migration 
  def change 
    create_table :firstname_artists do |t| 
      t.decimal :artist_passwords, :default => 4.1946268679809, null: false
      t.date :firstname_countries, :default => Date.new(2007,1,6), array: false
      t.float :firstname_lengths, :default => 0.5903021063473918, array: false
      t.decimal :password_films, :default => 6.027295574105439, null: false
      t.string :email_countries, :default => "HcSATucp", limit: 47
      t.date :firstname_passwords, :default => Date.new(2013,1,26), array: false
      t.integer :film_films, :default => 107, null: true
   end
end
end
