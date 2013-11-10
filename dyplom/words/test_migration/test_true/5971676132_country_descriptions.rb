class CreateCountryDescriptions < ActiveRecord::Migration 
  def change 
    create_table :country_descriptions do |t| 
      t.timestamp :address_emails, :default => DateTime.new(2013,7,8,16,7,22), null: true
      t.timestamp :password_emails, :default => DateTime.new(2008,4,28,7,37,40), array: false
      t.time :music_addresses, :default => Time.new(2010, 10, 10, 8,4,54), null: false
      t.text :description_artists, :default => :artist_roles, null: false
      t.time :password_films, array: true
   end
end
end
