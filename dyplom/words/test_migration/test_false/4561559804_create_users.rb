class CreateRoleMusics < ActiveRecord::Migration 
  def change 
    create_table :role_musics do |t| 
      t.datetimeoffset :then, :default => Date.new(2002,11,28), limit: 1
      t.datetimeoffset :rescue, :default => Date.new(2008,4,15), precision: 2
      t.datetime :yield, :default => DateTime.new(2001,8,4,21,5,2), scale: 2
      t.datetime :alias, :default => DateTime.new(2004,8,10,16,29,26), limit: 4
      t.tinyint(1) :ensure, :default => false, limit: 50
      t.tinyint(1) :alias, :default => false, precision: 0, scale: 0
      t.datetime :retry, :default => DateTime.new(2005,7,18,2,38,22), scale: 1
   end
end
end
