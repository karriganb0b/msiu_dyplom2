class CreateSongDescriptions < ActiveRecord::Migration 
  def change 
    create_table :song_descriptions do |t| 
      t.blob :return, :default => 153, limit: 7
      t.int(11) :until, :default => 118, scale: 0
      t.blob :in, :default => 81, precision: 1
      t.blob :unless, :default => 162, limit: 9
      t.tinyint(1) :true, :default => true, precision: 3
      t.tinyint(1) :super, :default => false, limit: 2
      t.char :END, :default => "gsiOISzX", scale: 1
   end
end
end
