class CreateAddressRoles < ActiveRecord::Migration 
  def change 
    create_table :address_roles do |t| 
      t.date :artist_lengths, :default => Date.new(2008,2,30), null: true
      t.integer :artist_roles, :default => 254, null: true
      t.date :length_songs, :default => Date.new(2006,4,3), null: true
      t.boolean :film_passwords, :default => true
      t.boolean :length_descriptions, :default => false
   end
end
end
