class CreateFirstnameLengths < ActiveRecord::Migration 
  def change 
    create_table :firstname_lengths do |t| 
      t.time :firstname_firstnames, :default => Time.new(2010, 10, 10, 0,3,33), array: false
      t.decimal :song_roles, array: true
      t.boolean :length_countries, :default => true
      t.string :firstname_emails, array: true
      t.timestamp :email_emails, :default => DateTime.new(2014,5,1,5,16,13), null: false
   end
end
end
