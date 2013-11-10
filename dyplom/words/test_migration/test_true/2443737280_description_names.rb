class CreateDescriptionNames < ActiveRecord::Migration 
  def change 
    create_table :description_names do |t| 
      t.boolean :firstname_addresses, :default => false
      t.time :name_films, :default => Time.new(2010, 10, 10, 16,12,56), array: false
      t.boolean :music_lengths, :default => true
      t.string :film_passwords, :default => "JmYxmKdY", limit: 1
      t.decimal :address_songs, array: true
      t.string :description_countries, :default => "zJLVWDwD", null: false
   end
end
end
