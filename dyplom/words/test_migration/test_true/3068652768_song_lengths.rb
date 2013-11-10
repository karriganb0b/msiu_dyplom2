class CreateSongLengths < ActiveRecord::Migration 
  def change 
    create_table :song_lengths do |t| 
      t.boolean :length_roles, :default => true
      t.decimal :song_emails, :default => 4.135425635483461, array: false
      t.text :password_addresses, :default => :song_emails, null: false
      t.time :firstname_names, :default => Time.new(2010, 10, 10, 23,20,19), null: true
      t.boolean :firstname_descriptions, :default => false
   end
end
end
