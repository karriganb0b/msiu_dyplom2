class CreateCountrySongs < ActiveRecord::Migration 
  def change 
    create_table :country_songs do |t| 
      t.float :film_roles, :default => 0.31278010328489136, array: false
      t.string :password_lengths, :default => "JyrKazHX", null: true
      t.date :country_musics, array: true
      t.boolean :description_addresses, :default => true
      t.time :address_musics, :default => Time.new(2010, 10, 10, 14,51,39), array: false
      t.timestamp :name_countries, :default => DateTime.new(2009,1,7,11,20,46), array: false
      t.timestamp :role_countries, :default => DateTime.new(2012,7,27,2,32,10), null: false
   end
end
end
