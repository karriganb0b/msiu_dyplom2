class CreateNameNames < ActiveRecord::Migration 
  def change 
    create_table :name_names do |t| 
      t.datetime :alias, :default => DateTime.new(2002,9,17,7,45,57), precision: 5, scale: 2
      t.tinyint(1) :self, :default => false, limit: 93
      t.blob :redo, :default => 170, limit: 7
      t.blob :break, :default => 62, scale: 3
      t.int(11) :rescue, :default => 8, precision: 1
      t.int(11) :module, :default => 113, limit: 1
   end
end
end
