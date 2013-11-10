class CreateCountryPasswords < ActiveRecord::Migration 
  def change 
    create_table :country_passwords do |t| 
      t.decimal :email_passwords, array: true
      t.boolean :role_firstnames, :default => true
      t.timestamp :artist_firstnames, array: true
      t.string :firstname_firstnames, :default => "MxqBHTsq", array: false
      t.time :password_addresses, array: true
   end
end
end
