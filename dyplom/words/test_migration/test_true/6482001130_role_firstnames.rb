class CreateRoleFirstnames < ActiveRecord::Migration 
  def change 
    create_table :role_firstnames do |t| 
      t.date :music_names, :default => Date.new(2013,5,19), null: true
      t.text :film_musics, :default => :name_musics, null: true
      t.string :password_musics, :default => "kdxBrijy", limit: 5
      t.string :country_names, array: true
      t.text :role_songs, :default => :firstname_musics, limit: 1
      t.text :country_artists, :default => :country_roles, null: false
   end
end
end
