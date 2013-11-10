class CreateLengthLengths < ActiveRecord::Migration
	 def change
	   create_table :length_lengths do |t|
t.timestamp :password_emails, :default => DateTime.new(2009,11,27,20,12,38), array: false
   t.decimal :artist_descriptions, :default => 8.915723449130654, precision: 6, scale: 3
   t.timestamp :password_firstnames, :default => DateTime.new(2004,2,7,7,19,19), array: false
   t.integer :song_emails, :default => 172, null: true
   	end
				add_index(:length_lengths, [:password_firstnames], :unique => false)
  end 
end
