class CreatePasswordDescriptions < ActiveRecord::Migration 
  def change 
    create_table :password_descriptions do |t| 
      t.tinyint(1) :and, :default => false, precision: 6
      t.blob :defined?, :default => 214, scale: 1
      t.int(11) :BEGIN, :default => 162, precision: 0
      t.char :alias, :default => "wBxEATfG", limit: 1
      t.tinyint(1) :then, :default => false, limit: 5
      t.datetime :nil, :default => DateTime.new(2012,7,10,12,50,13), limit: 1
   end
end
end
