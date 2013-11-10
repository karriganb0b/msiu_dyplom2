class CreateMusicLengths < ActiveRecord::Migration 
  def change 
    create_table :music_lengths do |t| 
      t.int(11) :class, :default => 92, precision: 3, scale: 4
      t.blob :in, :default => 134, scale: 0
      t.tinyint(1) :alias, :default => true, limit: 191
      t.datetimeoffset :retry, :default => Date.new(2014,11,5), limit: 1
      t.int(11) :or, :default => 117, scale: 4
   end
end
end
