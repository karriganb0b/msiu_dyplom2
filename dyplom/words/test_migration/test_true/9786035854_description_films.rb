class CreateDescriptionFilms < ActiveRecord::Migration 
  def change 
    create_table :description_films do |t| 
      t.boolean :artist_emails, :default => true
      t.timestamp :song_addresses, :default => DateTime.new(2006,8,15,1,1,37), array: false
      t.time :music_emails, :default => Time.new(2010, 10, 10, 8,1,39), array: false
      t.decimal :firstname_lengths, :default => 2.185691295306107, array: false
      t.timestamp :firstname_lengths, :default => DateTime.new(2007,11,17,11,45,50), array: false
   end
end
end
