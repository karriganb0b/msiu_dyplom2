class CreateFilmFilms < ActiveRecord::Migration 
  def change 
    create_table :film_films do |t| 
      t.datetimeoffset :end, :default => Date.new(2006,2,11), precision: 0
      t.int(11) :false, :default => 231, scale: 4
      t.datetime :end, :default => DateTime.new(2001,9,9,14,57,21), limit: 71
      t.int(11) :elsif, :default => 251, limit: 181
      t.datetime :end, :default => DateTime.new(2014,8,9,15,23,6), limit: 8
   end
end
end
