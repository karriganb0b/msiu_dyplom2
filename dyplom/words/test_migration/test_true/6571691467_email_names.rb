class CreateEmailNames < ActiveRecord::Migration 
  def change 
    create_table :email_names do |t| 
      t.decimal :name_lengths, :default => 6.2341125774078545, null: true
      t.integer :film_lengths, :default => 42, limit: 9
      t.integer :music_names, :default => 72, limit: 1
      t.integer :email_countries, :default => 143, limit: 1
      t.string :film_artists, :default => "JZacZscb", limit: 9
   end
end
end
