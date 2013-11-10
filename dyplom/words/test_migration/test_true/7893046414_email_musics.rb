class CreateEmailMusics < ActiveRecord::Migration 
  def change 
    create_table :email_musics do |t| 
      t.time :firstname_countries, array: true
      t.string :artist_musics, :default => "YhKugvMh", array: false
      t.decimal :address_emails, :default => 1.5414289374217138, null: true
      t.decimal :firstname_names, :default => 2.308737334182826, null: true
      t.float :role_names, :default => 3.5091002056249354, null: true
      t.time :artist_passwords, array: true
      t.text :film_films, :default => :description_roles, array: false
   end
end
end
