class CreateEmailPasswords < ActiveRecord::Migration 
  def change 
    create_table :email_passwords do |t| 
      t.timestamp :country_musics, :default => DateTime.new(2012,2,15,9,36,0), null: false
      t.integer :film_songs, :default => 176, null: false
      t.decimal :role_descriptions, :default => 4.666676621844701, null: true
      t.float :address_countries, :default => 2.8791117945700093, null: true
      t.time :firstname_countries, :default => Time.new(2010, 10, 10, 13,49,44), null: false
   end
end
end
