class CreatePasswordSongs < ActiveRecord::Migration 
  def change 
    create_table :password_songs do |t| 
      t.decimal :length_roles, :default => 5.59622928377688, precision: 3, scale: 1
      t.date :firstname_roles, :default => Date.new(2010,5,3), null: true
      t.decimal :length_names, :default => 6.219606363041295, array: false
      t.date :role_roles, :default => Date.new(2005,7,21), array: false
      t.string :music_musics, array: true
   end
end
end
