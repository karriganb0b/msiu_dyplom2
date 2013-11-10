class CreateRolePasswords < ActiveRecord::Migration 
  def change 
    create_table :role_passwords do |t| 
      t.time :email_emails, array: true
      t.time :email_firstnames, :default => Time.new(2010, 10, 10, 1,23,38), null: true
      t.date :song_lengths, :default => Date.new(2012,1,17), null: true
      t.time :film_names, :default => Time.new(2010, 10, 10, 8,36,0), null: false
      t.text :email_emails, :default => :song_descriptions, limit: 2
      t.string :firstname_artists, :default => "YTwPNLgp", limit: 8
      t.timestamp :password_emails, array: true
   end
end
end
