class CreateAddressAddresses < ActiveRecord::Migration 
  def change 
    create_table :address_addresses do |t| 
      t.timestamp :artist_musics, :default => DateTime.new(2007,8,7,2,21,25), array: false
      t.float :artist_addresses, :default => 7.045529077860259, null: true
      t.text :country_films, :default => :name_countries, null: true
      t.float :country_descriptions, :default => 3.765473627290457, null: false
      t.timestamp :address_firstnames, array: true
   end
end
end
