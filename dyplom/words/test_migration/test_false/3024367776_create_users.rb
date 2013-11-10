class CreateFilmFirstnames < ActiveRecord::Migration 
  def change 
    create_table :film_firstnames do |t| 
      t.tinyint(1) :do, :default => true, limit: 254
      t.int(11) :super, :default => 47, limit: 1
      t.datetime :in, :default => DateTime.new(2009,2,29,0,41,46), limit: 1
      t.blob :redo, :default => 56, limit: 6
      t.int(11) :do, :default => 67, scale: 4
      t.int(11) :for, :default => 83, scale: 1
   end
end
end
