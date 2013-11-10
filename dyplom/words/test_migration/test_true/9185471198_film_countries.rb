class CreateFilmCountries < ActiveRecord::Migration 
  def change 
    create_table :film_countries do |t| 
      t.integer :address_lengths, array: true
      t.float :length_emails, :default => 5.286457057853199, null: false
      t.time :name_artists, :default => Time.new(2010, 10, 10, 20,7,5), array: false
      t.float :song_lengths, :default => 4.185283091003185, null: false
      t.integer :length_passwords, :default => 53, null: true
   end
end
end
