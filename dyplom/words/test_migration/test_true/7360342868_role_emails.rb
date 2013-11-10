class CreateRoleEmails < ActiveRecord::Migration 
  def change 
    create_table :role_emails do |t| 
      t.time :song_films, :default => Time.new(2010, 10, 10, 14,28,56), null: true
      t.time :music_musics, :default => Time.new(2010, 10, 10, 23,38,48), null: true
      t.text :password_films, :default => :email_names, array: false
      t.boolean :address_lengths, :default => false
      t.float :name_descriptions, :default => 5.995479456017993, array: false
      t.float :email_songs, :default => 0.47531671550533616, null: true
   end
end
end
