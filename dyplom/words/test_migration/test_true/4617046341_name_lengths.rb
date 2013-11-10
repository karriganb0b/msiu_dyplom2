class CreateNameLengths < ActiveRecord::Migration 
  def change 
    create_table :name_lengths do |t| 
      t.time :email_emails, :default => Time.new(2010, 10, 10, 15,7,6), null: true
      t.decimal :email_passwords, :default => 6.650456680415716, null: true
      t.float :email_films, array: true
      t.time :song_songs, :default => Time.new(2010, 10, 10, 20,7,17), null: true
      t.decimal :song_artists, :default => 0.7033143050387447, precision: 11, scale: 4
      t.text :firstname_descriptions, :default => :music_addresses, array: false
      t.decimal :song_firstnames, :default => 7.697995354357742, precision: 6, scale: 1
   end
end
end
