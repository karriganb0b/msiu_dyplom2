class CreateLengthRoles < ActiveRecord::Migration 
  def change 
    create_table :length_roles do |t| 
      t.float :length_passwords, array: true
      t.boolean :music_films, :default => false
      t.timestamp :country_names, :default => DateTime.new(2002,3,8,22,3,25), null: true
      t.date :role_countries, :default => Date.new(2013,7,19), null: false
      t.string :country_songs, array: true
      t.string :song_roles, :default => "IIoOJvmw", null: false
      t.timestamp :country_emails, :default => DateTime.new(2000,6,27,7,2,8), null: false
   end
end
end
