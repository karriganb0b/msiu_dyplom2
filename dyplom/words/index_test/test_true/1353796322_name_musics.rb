class CreateNameMusics < ActiveRecord::Migration
	 def change
	   create_table :name_musics do |t|
t.text :length_roles, array: true
   t.timestamp :length_roles, :default => DateTime.new(2000,5,6,2,13,19), null: true
   t.date :firstname_songs, array: true
   t.string :description_songs, :default => "ZfEslTwx", limit: 5
   	end
				add_index(:name_musics, [:firstname_songs, :length_roles], :unique => false)
 				add_index(:name_musics, [:description_songs], :unique => true)
  end 
end
