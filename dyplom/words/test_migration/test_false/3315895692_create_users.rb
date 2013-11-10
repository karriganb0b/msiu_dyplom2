class CreateMusicFilms < ActiveRecord::Migration 
  def change 
    create_table :music_films do |t| 
      t.char :and, :default => "JrNZfsUM", precision: 4
      t.tinyint(1) :end, :default => true, limit: 8
      t.char :end, :default => "lafxxMpO", limit: 1
      t.char :defined?, :default => "KXjTBptf", precision: 4, scale: 3
      t.char :end, :default => "sgWXppsZ", limit: 1
   end
end
end
