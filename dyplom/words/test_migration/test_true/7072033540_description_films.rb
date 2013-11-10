class CreateDescriptionFilms < ActiveRecord::Migration 
  def change 
    create_table :description_films do |t| 
      t.float :name_musics, :default => 3.5127472274885845, null: false
      t.string :email_passwords, array: true
      t.string :password_passwords, :default => "cdETpDrC", null: true
      t.string :email_roles, :default => "IGGPEGTt", null: false
      t.text :email_musics, :default => :length_addresses, limit: 6
      t.string :password_lengths, :default => "cnXYkndj", limit: 9
      t.date :description_roles, :default => Date.new(2006,0,0), null: false
   end
end
end
