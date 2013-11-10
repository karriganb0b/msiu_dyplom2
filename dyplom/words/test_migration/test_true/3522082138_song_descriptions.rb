class CreateSongDescriptions < ActiveRecord::Migration 
  def change 
    create_table :song_descriptions do |t| 
      t.timestamp :length_addresses, :default => DateTime.new(2006,10,5,20,28,40), null: true
      t.float :email_firstnames, :default => 0.4195228569322653, null: true
      t.date :firstname_names, :default => Date.new(2000,7,17), null: false
      t.text :country_names, :default => :film_countries, limit: 7
      t.decimal :film_films, :default => 3.3671985201574905, array: false
      t.boolean :country_lengths, :default => true
      t.string :description_passwords, array: true
   end
end
end
