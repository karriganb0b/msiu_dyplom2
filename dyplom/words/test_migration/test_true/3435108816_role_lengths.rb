class CreateRoleLengths < ActiveRecord::Migration 
  def change 
    create_table :role_lengths do |t| 
      t.integer :role_firstnames, :default => 5, array: false
      t.date :name_musics, :default => Date.new(2011,10,18), array: false
      t.float :film_emails, array: true
      t.date :description_lengths, :default => Date.new(2003,6,18), null: false
      t.string :music_names, :default => "tJstHoHF", null: false
      t.integer :artist_countries, :default => 196, array: false
      t.integer :email_artists, :default => 198, null: false
   end
end
end
