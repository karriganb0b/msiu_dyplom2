class CreatePasswordEmails < ActiveRecord::Migration 
  def change 
    create_table :password_emails do |t| 
      t.string :description_names, :default => "pTPuhyEV", limit: 113
      t.decimal :music_countries, :default => 8.785899426970534, precision: 6, scale: 4
      t.string :song_names, :default => "JBAzhrbH", null: false
      t.text :firstname_roles, :default => :address_passwords, limit: 165
      t.text :country_names, :default => :firstname_names, limit: 8
      t.float :description_names, :default => 1.0256244848565057, array: false
      t.float :password_addresses, :default => 1.504067895761442, null: true
   end
end
end
