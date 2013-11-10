class CreateSongFirstnames < ActiveRecord::Migration 
  def change 
    create_table :song_firstnames do |t| 
      t.datetimeoffset :class, :default => Date.new(2003,2,7), precision: 5, scale: 4
      t.tinyint(1) :in, :default => true, limit: 1
      t.blob :until, :default => 212, scale: 2
      t.datetimeoffset :undef, :default => Date.new(2013,11,30), limit: 1
      t.tinyint(1) :else, :default => false, limit: 9
      t.blob :defined?, :default => 12, limit: 7
   end
end
end
