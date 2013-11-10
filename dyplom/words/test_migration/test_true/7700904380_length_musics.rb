class CreateLengthMusics < ActiveRecord::Migration 
  def change 
    create_table :length_musics do |t| 
      t.date :music_roles, array: true
      t.timestamp :password_passwords, :default => DateTime.new(2014,5,12,11,50,19), null: false
      t.boolean :song_lengths, :default => false
      t.date :email_firstnames, :default => Date.new(1999,8,7), array: false
      t.date :song_firstnames, :default => Date.new(2014,11,25), array: false
      t.decimal :music_passwords, :default => 4.5086543506784595, precision: 9, scale: 4
   end
end
end
