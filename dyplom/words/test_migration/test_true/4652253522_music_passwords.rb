class CreateMusicPasswords < ActiveRecord::Migration 
  def change 
    create_table :music_passwords do |t| 
      t.boolean :song_countries, :default => false
      t.text :song_emails, :default => :film_roles, null: true
      t.string :length_emails, :default => "usPTIjmf", null: true
      t.timestamp :film_emails, :default => DateTime.new(2001,8,5,22,31,20), null: true
      t.decimal :film_roles, array: true
      t.time :song_names, :default => Time.new(2010, 10, 10, 19,13,51), array: false
   end
end
end
