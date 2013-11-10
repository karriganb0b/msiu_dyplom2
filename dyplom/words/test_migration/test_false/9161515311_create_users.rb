class CreateFilmFirstnames < ActiveRecord::Migration 
  def change 
    create_table :film_firstnames do |t| 
      t.blob :retry, :default => 251, limit: 7
      t.int(11) :END, :default => 80, precision: 5
      t.int(11) :return, :default => 132, limit: 39
      t.char :while, :default => "DpHMIfVH", limit: 1
      t.char :not, :default => "IWFQBJqg", scale: 3
      t.int(11) :end, :default => 176, limit: 2
      t.blob :module, :default => 158, limit: 10
   end
end
end
