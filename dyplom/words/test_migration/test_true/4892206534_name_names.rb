class CreateNameNames < ActiveRecord::Migration 
  def change 
    create_table :name_names do |t| 
      t.time :artist_countries, :default => Time.new(2010, 10, 10, 3,46,32), array: false
      t.integer :music_lengths, :default => 241, limit: 4
      t.boolean :email_artists, :default => false
      t.time :length_names, :default => Time.new(2010, 10, 10, 2,3,38), null: false
      t.decimal :address_names, :default => 5.050726238329082, array: false
   end
end
end
