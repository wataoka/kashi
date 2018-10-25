class RemoveDatasetsColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :datasets, :lyric, :text
    remove_column :datasets, :arranger, :text
    remove_column :datasets, :lyricist, :text
    remove_column :datasets, :composer, :text
    remove_column :datasets, :pronounce, :text

    add_column :datasets, :lyrics, :text
  end
end
