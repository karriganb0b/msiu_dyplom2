class CreateRoleDescriptions < ActiveRecord::Migration 
  def change 
    create_table :role_descriptions do |t| 
      t.timestamp :email_musics, array: true
      t.string :length_passwords, :default => "eEFjfcrZ", array: false
      t.time :description_firstnames, array: true
      t.boolean :length_songs, :default => false
      t.time :length_descriptions, :default => Time.new(2010, 10, 10, 16,45,48), null: true
   end
end
end
