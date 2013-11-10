class CreateArtistMusics < ActiveRecord::Migration 
  def change 
    create_table :artist_musics do |t| 
      t.char :class, :default => "eRXtWsIX", limit: 1
      t.blob :true, :default => 106, scale: 1
      t.int(11) :begin, :default => 89, precision: 1, scale: 0
      t.char :unless, :default => "lJYUmepF", limit: 1
      t.datetime :elsif, :default => DateTime.new(2002,7,22,2,39,38), precision: 3
      t.datetime :do, :default => DateTime.new(2001,3,25,0,43,55), limit: 5
   end
end
end
