class CreateDatasets < ActiveRecord::Migration[5.2]
  def change
    create_table :datasets do |t|
      t.text :lyric
      t.text :arranger
      t.text :lyricist
      t.text :composer
      t.text :singer
      t.text :pronounce
      t.text :title

      t.timestamps
    end
  end
end


