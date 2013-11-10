class CreateNameMusics < ActiveRecord::Migration 
  def change 
    create_table :name_musics do |t| 
      t.time :song_roles, :default => Time.new(2010, 10, 10, 18,41,26), null: true
      t.float :address_films, :default => 8.018292829311337, array: false
      t.string :name_musics, :default => "rUQrhuyp", limit: 239
      t.timestamp :country_countries, :default => DateTime.new(2013,4,16,0,47,37), null: true
      t.timestamp :description_emails, :default => DateTime.new(2013,1,17,17,7,16), null: false
      t.integer :film_films, :default => 122, null: true
      t.text :role_roles, :default => :password_roles, null: true
   end
end
end
