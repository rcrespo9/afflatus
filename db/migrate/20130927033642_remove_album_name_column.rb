class RemoveAlbumNameColumn < ActiveRecord::Migration
  def up
  	remove_column :music_inspireds, :album_name
  end

  def down
  	add_column :music_inspireds, :album_name, :string
  end
end
