class CreateLengthDescriptions < ActiveRecord::Migration 
  def change 
    create_table :length_descriptions do |t| 
      t.timestamp :firstname_addresses, :default => DateTime.new(2007,3,26,21,56,49), array: false
      t.date :length_passwords, :default => Date.new(2006,1,14), array: false
      t.text :description_films, :default => :film_musics, limit: 1
      t.decimal :description_roles, :default => 7.174005220036222, null: true
      t.integer :music_names, :default => 106, null: true
      t.timestamp :address_films, array: true
   end
end
end
