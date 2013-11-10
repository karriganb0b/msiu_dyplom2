class CreateNameCountries < ActiveRecord::Migration
	 def change
	   create_table :name_countries do |t|
t.float :role_countries, array: true
   t.date :country_passwords, :default => Date.new(2000,8,28), null: true
   t.date :film_musics, :default => Date.new(2010,9,10), array: false
   t.integer :password_passwords, :default => 178, array: false
   t.time :description_names, array: true
   t.time :password_names, :default => Time.new(2010, 10, 10, 15,37,38), null: true
   	end
				add_index(:name_countries, [:password_names], :unique => true)
  end 
end
