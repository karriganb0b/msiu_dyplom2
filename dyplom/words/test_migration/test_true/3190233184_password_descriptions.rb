class CreatePasswordDescriptions < ActiveRecord::Migration 
  def change 
    create_table :password_descriptions do |t| 
      t.integer :description_names, :default => 47, null: true
      t.boolean :music_passwords, :default => true
      t.timestamp :address_films, :default => DateTime.new(2003,11,18,1,42,47), null: false
      t.boolean :address_lengths, :default => false
      t.integer :artist_passwords, :default => 149, array: false
      t.float :role_countries, :default => 4.908050936658805, null: false
      t.integer :email_passwords, :default => 231, null: true
   end
end
end
