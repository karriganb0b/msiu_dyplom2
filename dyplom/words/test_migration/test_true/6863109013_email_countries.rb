class CreateEmailCountries < ActiveRecord::Migration 
  def change 
    create_table :email_countries do |t| 
      t.integer :firstname_countries, :default => 155, null: false
      t.boolean :music_lengths, :default => false
      t.timestamp :name_countries, :default => DateTime.new(2003,1,9,14,13,4), null: true
      t.date :address_lengths, array: true
      t.decimal :email_firstnames, array: true
      t.timestamp :length_artists, :default => DateTime.new(2014,2,3,3,41,16), array: false
   end
end
end
