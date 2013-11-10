class CreateMusicSongs < ActiveRecord::Migration 
  def change 
    create_table :music_songs do |t| 
      t.char :rescue, :default => "uUfZjJNo", precision: 0
      t.blob :def, :default => 146, limit: 32
      t.blob :defined?, :default => 73, limit: 1
      t.int(11) :for, :default => 209, scale: 0
      t.blob :begin, :default => 18, limit: 4
      t.int(11) :and, :default => 66, precision: 3, scale: 0
   end
end
end
