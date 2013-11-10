class CreateFirstnameEmails < ActiveRecord::Migration 
  def change 
    create_table :firstname_emails do |t| 
      t.date :song_passwords, :default => Date.new(2013,3,26), null: false
      t.time :address_names, :default => Time.new(2010, 10, 10, 3,8,19), null: true
      t.string :address_addresses, :default => "uphIDiKC", limit: 8
      t.text :country_countries, :default => :name_films, limit: 4
      t.boolean :country_addresses, :default => true
      t.integer :name_films, :default => 13, array: false
   end
end
end
