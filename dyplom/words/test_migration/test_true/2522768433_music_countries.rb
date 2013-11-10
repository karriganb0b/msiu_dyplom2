class CreateMusicCountries < ActiveRecord::Migration 
  def change 
    create_table :music_countries do |t| 
      t.boolean :email_films, :default => false
      t.boolean :password_passwords, :default => true
      t.timestamp :song_films, :default => DateTime.new(2013,3,14,1,42,58), null: true
      t.integer :firstname_lengths, array: true
      t.float :description_countries, :default => 0.6946164876399105, array: false
      t.timestamp :password_films, :default => DateTime.new(2007,7,10,4,56,53), array: false
      t.float :name_countries, :default => 8.01000501946577, null: true
   end
end
end
