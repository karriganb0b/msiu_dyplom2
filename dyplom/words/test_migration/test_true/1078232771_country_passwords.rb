class CreateCountryPasswords < ActiveRecord::Migration 
  def change 
    create_table :country_passwords do |t| 
      t.boolean :firstname_descriptions, :default => false
      t.boolean :film_names, :default => true
      t.timestamp :name_films, :default => DateTime.new(1999,9,8,7,55,50), null: true
      t.timestamp :artist_addresses, array: true
      t.float :song_passwords, :default => 5.6754670269831395, null: true
   end
end
end
