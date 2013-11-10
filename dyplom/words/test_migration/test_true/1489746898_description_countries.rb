class CreateDescriptionCountries < ActiveRecord::Migration 
  def change 
    create_table :description_countries do |t| 
      t.float :description_songs, :default => 6.211219293011784, null: false
      t.time :length_passwords, :default => Time.new(2010, 10, 10, 5,51,16), null: true
      t.text :length_descriptions, array: true
      t.timestamp :name_passwords, :default => DateTime.new(2003,8,28,0,18,24), array: false
      t.float :description_countries, :default => 0.4706663358844879, array: false
      t.integer :length_names, :default => 56, limit: 159
      t.text :country_countries, :default => :length_emails, limit: 8
   end
end
end
