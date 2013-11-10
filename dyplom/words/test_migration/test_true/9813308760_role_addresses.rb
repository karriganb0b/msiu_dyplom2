class CreateRoleAddresses < ActiveRecord::Migration 
  def change 
    create_table :role_addresses do |t| 
      t.decimal :country_songs, :default => 4.069162768659552, precision: 6, scale: 5
      t.string :email_passwords, :default => "SMHZSYvO", null: true
      t.time :length_firstnames, :default => Time.new(2010, 10, 10, 0,58,26), array: false
      t.date :length_names, :default => Date.new(2000,9,0), null: false
      t.boolean :country_lengths, :default => false
      t.text :length_countries, :default => :address_descriptions, limit: 1
   end
end
end
