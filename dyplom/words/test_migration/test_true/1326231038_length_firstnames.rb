class CreateLengthFirstnames < ActiveRecord::Migration 
  def change 
    create_table :length_firstnames do |t| 
      t.timestamp :music_artists, :default => DateTime.new(2004,5,3,20,10,40), null: false
      t.text :length_addresses, :default => :length_firstnames, limit: 1
      t.float :password_musics, :default => 3.223827522711074, array: false
      t.float :film_films, array: true
      t.timestamp :address_films, :default => DateTime.new(1999,8,22,17,9,21), null: true
   end
end
end
