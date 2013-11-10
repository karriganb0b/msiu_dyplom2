class CreateMusicFirstnames < ActiveRecord::Migration 
  def change 
    create_table :music_firstnames do |t| 
      t.blob :when, :default => 5, scale: 3
      t.datetimeoffset :case, :default => Date.new(2005,6,3), precision: 1, scale: 4
      t.int(11) :not, :default => 103, precision: 6
      t.datetimeoffset :when, :default => Date.new(1999,4,30), precision: 0, scale: 0
      t.tinyint(1) :begin, :default => false, limit: 4
      t.datetime :unless, :default => DateTime.new(2003,1,26,22,15,20), scale: 1
   end
end
end
