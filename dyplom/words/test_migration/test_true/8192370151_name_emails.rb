class CreateNameEmails < ActiveRecord::Migration 
  def change 
    create_table :name_emails do |t| 
      t.integer :role_emails, :default => 243, null: false
      t.decimal :country_names, array: true
      t.integer :music_films, array: true
      t.float :description_countries, :default => 7.72086107164994, null: false
      t.date :firstname_roles, :default => Date.new(2005,7,18), null: false
   end
end
end
