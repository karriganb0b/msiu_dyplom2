class CreateFilmArtists < ActiveRecord::Migration 
  def change 
    create_table :film_artists do |t| 
      t.float :length_artists, array: true
      t.timestamp :length_roles, :default => DateTime.new(2007,8,10,15,20,35), array: false
      t.text :role_roles, :default => :email_passwords, array: false
      t.boolean :music_artists, :default => true
      t.date :firstname_names, :default => Date.new(2008,2,6), array: false
      t.string :film_artists, :default => "Hoifcfvw", array: false
      t.string :description_songs, array: true
   end
end
end
