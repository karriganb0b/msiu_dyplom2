class CreateDescriptionSongs < ActiveRecord::Migration 
  def change 
    create_table :description_songs do |t| 
      t.int(11) :nil, :default => 159, precision: 5, scale: 1
      t.char :while, :default => "zXVXlDZr", precision: 6, scale: 2
      t.int(11) :else, :default => 126, scale: 3
      t.tinyint(1) :unless, :default => false, scale: 0
      t.int(11) :class, :default => 192, precision: 3, scale: 4
      t.datetimeoffset :for, :default => Date.new(2009,7,27), limit: 8
   end
end
end
