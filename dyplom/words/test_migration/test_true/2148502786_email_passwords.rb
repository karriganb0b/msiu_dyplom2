class CreateEmailPasswords < ActiveRecord::Migration 
  def change 
    create_table :email_passwords do |t| 
      t.integer :firstname_firstnames, array: true
      t.time :music_passwords, array: true
      t.decimal :song_countries, :default => 4.022917386483966, array: false
      t.text :country_lengths, :default => :description_lengths, limit: 5
      t.text :song_passwords, :default => :song_lengths, limit: 9
      t.integer :music_firstnames, :default => 247, null: true
      t.integer :country_firstnames, :default => 124, null: true
   end
end
end
