class CreateMusicMusics < ActiveRecord::Migration 
  def change 
    create_table :music_musics do |t| 
      t.string :song_firstnames, :default => "HFAAbvpW", null: false
      t.text :film_descriptions, :default => :length_names, array: false
      t.date :description_addresses, :default => Date.new(2009,10,20), array: false
      t.float :firstname_names, :default => 1.3104534386800855, null: false
      t.time :name_emails, :default => Time.new(2010, 10, 10, 12,23,20), null: true
      t.float :film_films, array: true
   end
end
end
