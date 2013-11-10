class CreateLengthNames < ActiveRecord::Migration 
  def change 
    create_table :length_names do |t| 
      t.text :artist_passwords, :default => :name_names, null: true
      t.text :address_emails, :default => :length_musics, array: false
      t.float :length_films, array: true
      t.time :artist_artists, :default => Time.new(2010, 10, 10, 3,10,39), null: true
      t.boolean :role_names, :default => false
      t.float :description_firstnames, :default => 8.352658482962843, array: false
   end
end
end
