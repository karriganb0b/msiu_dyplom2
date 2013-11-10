class CreateLengthRoles < ActiveRecord::Migration 
  def change 
    create_table :length_roles do |t| 
      t.integer :address_names, :default => 74, null: true
      t.boolean :description_lengths, :default => false
      t.integer :country_roles, array: true
      t.string :length_countries, :default => "UUlLlosc", null: true
      t.float :role_films, :default => 3.6376926157113507, array: false
   end
end
end
