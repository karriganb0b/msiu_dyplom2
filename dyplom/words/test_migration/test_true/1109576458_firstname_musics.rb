class CreateFirstnameMusics < ActiveRecord::Migration 
  def change 
    create_table :firstname_musics do |t| 
      t.integer :address_lengths, :default => 34, null: false
      t.date :music_firstnames, array: true
      t.string :firstname_addresses, :default => "IPhyseWs", limit: 8
      t.timestamp :length_passwords, :default => DateTime.new(2011,2,24,11,12,29), null: false
      t.timestamp :description_roles, :default => DateTime.new(2006,11,4,8,2,14), null: false
   end
end
end
