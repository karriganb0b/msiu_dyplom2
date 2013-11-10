class CreateDescriptionPasswords < ActiveRecord::Migration 
  def change 
    create_table :description_passwords do |t| 
      t.timestamp :email_songs, :default => DateTime.new(1999,4,22,14,4,6), array: false
      t.decimal :role_addresses, array: true
      t.decimal :description_countries, :default => 6.791878858063554, null: false
      t.string :country_artists, :default => "OSbbndee", limit: 1
      t.text :firstname_roles, :default => :description_lengths, null: true
      t.text :film_films, :default => :password_artists, array: false
   end
end
end
