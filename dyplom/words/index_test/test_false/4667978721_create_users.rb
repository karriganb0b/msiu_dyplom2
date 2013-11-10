class CreatePasswordNames < ActiveRecord::Migration
	 def change
	   create_table :password_names do |t|
t.string :film_country, :default => "yhqNCWCL", null: true
   t.time :length_firstname, :default => Time.new(2010, 10, 10, 1,29,7), null: true
   t.decimal :country_role, :default => 0.6654562686467127, null: false
   t.timestamp :song_length, :default => DateTime.new(2010,2,29,0,36,40), null: true
   t.decimal :password_name, :default => 7.079293683993017, array: false
   	end
				add_index(:password_names, %]length_firstname_id;, :unique => true)
  end 
end
