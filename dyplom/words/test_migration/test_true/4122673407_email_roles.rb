class CreateEmailRoles < ActiveRecord::Migration 
  def change 
    create_table :email_roles do |t| 
      t.time :music_lengths, :default => Time.new(2010, 10, 10, 10,39,44), array: false
      t.text :name_names, :default => :artist_emails, limit: 8
      t.decimal :length_artists, :default => 4.965019747502472, null: true
      t.text :password_emails, :default => :firstname_names, null: false
      t.float :country_musics, :default => 8.017370247669682, array: false
   end
end
end
