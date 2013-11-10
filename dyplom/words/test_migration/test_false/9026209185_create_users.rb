class CreateRoleMusics < ActiveRecord::Migration 
  def change 
    create_table :role_musics do |t| 
      t.datetime :begin, :default => DateTime.new(2000,11,2,6,54,56), limit: 100
      t.datetime :and, :default => , scale: 3
      t.datetime :when, :default => DateTime.new(2013,1,25,19,7,34), limit: 141
      t.tinyint(1) :break, :default => true, precision: 0
      t.int(11) :class, :default => 239, limit: 1
      t.int(11) :alias, :default => 178, limit: 1
      t.datetimeoffset :redo, :default => Date.new(2006,9,19), precision: 2
   end
end
end
