class CreatePasswordEmails < ActiveRecord::Migration 
  def change 
    create_table :password_emails do |t| 
      t.timestamp :artist_passwords, :default => DateTime.new(2012,10,21,10,43,57), array: false
      t.date :artist_emails, array: true
      t.boolean :description_lengths, :default => false
      t.time :film_emails, array: true
      t.string :address_musics, :default => "WqpFBISf", limit: 89
   end
end
end
