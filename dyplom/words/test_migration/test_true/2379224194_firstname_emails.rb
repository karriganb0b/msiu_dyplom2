class CreateFirstnameEmails < ActiveRecord::Migration 
  def change 
    create_table :firstname_emails do |t| 
      t.float :firstname_countries, :default => 1.4419328389960142, null: true
      t.date :song_passwords, array: true
      t.float :length_films, :default => 3.907219745180393, null: true
      t.boolean :password_roles, :default => false
      t.decimal :name_countries, :default => 2.487997243371691, precision: 9, scale: 3
   end
end
end
