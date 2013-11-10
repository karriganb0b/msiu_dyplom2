class CreatePasswordRoles < ActiveRecord::Migration 
  def change 
    create_table :password_roles do |t| 
      t.boolean :email_firstnames, :default => false
      t.boolean :artist_passwords, :default => true
      t.decimal :length_countries, :default => 5.652470879329154, precision: 7, scale: 3
      t.string :firstname_films, :default => "dHPzsFwq", limit: 2
      t.timestamp :artist_descriptions, array: true
      t.timestamp :music_emails, :default => DateTime.new(2003,2,13,16,44,29), null: false
   end
end
end
