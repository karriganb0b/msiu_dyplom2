class CreateFilmFirstnames < ActiveRecord::Migration 
  def change 
    create_table :film_firstnames do |t| 
      t.timestamp :name_firstnames, array: true
      t.date :length_films, :default => Date.new(2003,9,30), null: false
      t.text :description_roles, :default => :film_names, null: false
      t.integer :name_emails, :default => 140, limit: 1
      t.time :firstname_songs, :default => Time.new(2010, 10, 10, 20,1,36), null: false
      t.decimal :name_countries, :default => 5.415368583079868, null: false
   end
end
end
