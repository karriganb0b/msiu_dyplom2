class CreateEmailAddresses < ActiveRecord::Migration 
  def change 
    create_table :email_addresses do |t| 
      t.decimal :name_emails, array: true
      t.float :role_names, :default => 5.913994673948835, array: false
      t.string :length_firstnames, :default => "MFXtgByf", limit: 10
      t.float :length_lengths, :default => 1.8987244167396728, null: true
      t.date :description_emails, :default => Date.new(2000,6,8), null: false
      t.integer :description_descriptions, :default => 87, null: false
      t.float :country_emails, array: true
   end
end
end
