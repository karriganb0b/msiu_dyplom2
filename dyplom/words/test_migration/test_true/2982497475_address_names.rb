class CreateAddressNames < ActiveRecord::Migration 
  def change 
    create_table :address_names do |t| 
      t.timestamp :email_lengths, :default => DateTime.new(2012,11,5,20,3,22), null: true
      t.text :address_passwords, :default => :email_songs, array: false
      t.text :address_names, :default => :role_addresses, limit: 8
      t.float :description_songs, :default => 3.4297473955334916, null: true
      t.text :firstname_emails, :default => :description_passwords, null: true
      t.time :role_firstnames, :default => Time.new(2010, 10, 10, 16,20,10), null: false
      t.string :firstname_films, :default => "wFFoCooR", null: false
   end
end
end
