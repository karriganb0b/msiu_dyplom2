class CreateFirstnameAddresses < ActiveRecord::Migration 
  def change 
    create_table :firstname_addresses do |t| 
      t.timestamp :artist_passwords, :default => DateTime.new(2000,2,15,3,29,13), null: false
      t.decimal :song_films, :default => 5.477605069247558, array: false
      t.float :artist_artists, array: true
      t.integer :email_roles, :default => 122, limit: 5
      t.timestamp :address_descriptions, array: true
      t.string :film_firstnames, array: true
      t.string :role_roles, :default => "xAcaPrSC", null: false
   end
end
end
