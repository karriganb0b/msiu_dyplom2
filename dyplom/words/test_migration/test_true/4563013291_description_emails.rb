class CreateDescriptionEmails < ActiveRecord::Migration 
  def change 
    create_table :description_emails do |t| 
      t.string :firstname_countries, :default => "rolacqvR", null: false
      t.date :role_firstnames, :default => Date.new(2001,7,2), null: false
      t.string :role_emails, array: true
      t.text :name_addresses, :default => :name_countries, array: false
      t.float :length_roles, :default => 2.4249438105176115, null: false
   end
end
end
