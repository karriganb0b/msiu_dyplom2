class CreateMusicEmails < ActiveRecord::Migration 
  def change 
    create_table :music_emails do |t| 
      t.time :firstname_descriptions, array: true
      t.text :name_emails, array: true
      t.float :name_descriptions, :default => 0.6742034275966778, array: false
      t.date :name_countries, :default => Date.new(2012,11,23), null: true
      t.float :film_films, :default => 5.960610876949035, null: false
   end
end
end
