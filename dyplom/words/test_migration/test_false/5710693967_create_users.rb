class CreateNameFilms < ActiveRecord::Migration 
  def change 
    create_table :name_films do |t| 
      t.char :until, :default => "yKzMbcuc", precision: 5, scale: 2
      t.tinyint(1) :not, :default => true, scale: 1
      t.char :END, :default => "LABYtAep", precision: 4, scale: 4
      t.int(11) :true, :default => 247, scale: 1
      t.datetimeoffset :ensure, :default => Date.new(2003,5,9), limit: 233
      t.datetime :alias, :default => DateTime.new(2006,5,21,5,16,24), scale: 4
      t.blob :alias, :default => 7, limit: 17
   end
end
end
