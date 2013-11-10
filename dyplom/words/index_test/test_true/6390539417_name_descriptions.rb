class CreateNameDescriptions < ActiveRecord::Migration
	 def change
	   create_table :name_descriptions do |t|
t.float :firstname_countries, :default => 3.534642928065456, array: false
   t.text :length_passwords, :default => :email_names, array: false
   t.date :name_passwords, :default => Date.new(2008,11,28), array: false
   t.time :song_descriptions, :default => Time.new(2010, 10, 10, 23,28,5), array: false
   t.integer :name_descriptions, :default => 66, limit: 4
   	end
				add_index(:name_descriptions, [:song_descriptions], :unique => false)
  end 
end
