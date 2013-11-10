class CreateDescriptionDescriptions < ActiveRecord::Migration 
  def change 
    create_table :description_descriptions do |t| 
      t.char :super, :default => "BGxmRbOy", limit: 5
      t.int(11) :self, :default => 161, limit: 169
      t.int(11) :next, :default => 119, precision: 2
      t.int(11) :elsif, :default => 130, precision: 6, scale: 3
      t.tinyint(1) :break, :default => true, precision: 4
      t.char :def, :default => "ppZEtlTU", limit: 6
   end
end
end
