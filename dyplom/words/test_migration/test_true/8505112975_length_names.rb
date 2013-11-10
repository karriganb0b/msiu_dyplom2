class CreateLengthNames < ActiveRecord::Migration 
  def change 
    create_table :length_names do |t| 
      t.boolean :description_emails, :default => false
      t.string :country_films, :default => "MMTicqfb", limit: 3
      t.date :role_roles, :default => Date.new(2001,8,24), null: true
      t.string :film_lengths, :default => "weWqgryO", limit: 10
      t.timestamp :role_firstnames, :default => DateTime.new(1999,5,28,5,42,28), array: false
      t.decimal :password_musics, :default => 3.708601249758415, precision: 6, scale: 3
      t.boolean :address_names, :default => true
   end
end
end
