class CreateNameFirstnames < ActiveRecord::Migration 
  def change 
    create_table :name_firstnames do |t| 
      t.decimal :firstname_names, array: true
      t.decimal :email_songs, array: true
      t.float :name_musics, :default => 2.6720432916754513, array: false
      t.float :country_lengths, :default => 5.001439936817437, array: false
      t.time :address_emails, :default => Time.new(2010, 10, 10, 18,27,19), array: false
      t.timestamp :song_descriptions, :default => DateTime.new(2003,1,11,2,24,53), null: true
   end
end
end
