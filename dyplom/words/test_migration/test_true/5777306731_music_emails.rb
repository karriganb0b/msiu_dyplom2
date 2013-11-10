class CreateMusicEmails < ActiveRecord::Migration 
  def change 
    create_table :music_emails do |t| 
      t.decimal :name_artists, :default => 1.644480351073657, null: false
      t.string :role_descriptions, :default => "DKCgjWuL", limit: 8
      t.boolean :name_musics, :default => true
      t.boolean :role_films, :default => false
      t.string :artist_roles, :default => "DCLafUMW", limit: 1
   end
end
end
