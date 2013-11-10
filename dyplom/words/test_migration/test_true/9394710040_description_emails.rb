class CreateDescriptionEmails < ActiveRecord::Migration 
  def change 
    create_table :description_emails do |t| 
      t.text :email_passwords, :default => :music_descriptions, limit: 1
      t.integer :email_addresses, :default => 207, null: true
      t.string :role_lengths, :default => "WSbDMKRP", null: false
      t.decimal :song_emails, :default => 6.237662979210575, null: true
      t.text :role_musics, :default => :description_roles, null: true
      t.time :country_lengths, :default => Time.new(2010, 10, 10, 14,35,21), null: true
      t.time :email_firstnames, :default => Time.new(2010, 10, 10, 7,27,59), null: true
   end
end
end
