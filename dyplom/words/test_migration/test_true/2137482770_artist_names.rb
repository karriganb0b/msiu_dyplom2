class CreateArtistNames < ActiveRecord::Migration 
  def change 
    create_table :artist_names do |t| 
      t.integer :firstname_roles, :default => 192, array: false
      t.time :email_films, :default => Time.new(2010, 10, 10, 18,5,29), array: false
      t.boolean :email_addresses, :default => false
      t.string :length_musics, :default => "MXGVvOwg", null: true
      t.string :song_passwords, :default => "EYIPfeyN", limit: 34
      t.boolean :role_lengths, :default => true
      t.float :artist_films, :default => 2.6598276432040535, array: false
   end
end
end
