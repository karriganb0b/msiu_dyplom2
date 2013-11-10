class CreateSongFilms < ActiveRecord::Migration 
  def change 
    create_table :song_films do |t| 
      t.char :ensure, :default => "PzEZbTSl", limit: 3
      t.datetime :elsif, :default => DateTime.new(1999,9,22,5,53,7), limit: 1
      t.int(11) :case, :default => 229, scale: 3
      t.blob :begin, :default => 219, precision: 4
      t.datetimeoffset :when, :default => Date.new(2014,4,19), limit: 6
      t.datetime :ensure, :default => DateTime.new(2009,7,7,16,57,11), limit: 5
      t.datetimeoffset :or, :default => Date.new(2009,11,9), limit: 7
   end
end
end
