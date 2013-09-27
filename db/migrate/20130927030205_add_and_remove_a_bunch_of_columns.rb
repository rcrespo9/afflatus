class AddAndRemoveABunchOfColumns < ActiveRecord::Migration
  def up
  	remove_column :photo_inspireds, :photo_title
  	remove_column :photo_inspireds, :photographer_name
  	add_column :photo_inspireds, :writer_name, :string
  	add_column :photo_inspireds, :img_desc, :text
  	add_column :music_inspireds, :writer_name, :string
  end

  def down
  	add_column :photo_inspireds, :photo_title_, :string
  	add_column :photo_inspireds, :photographer_name, :string
  	remove_column :photo_inspireds, :writer_name
  	remove_column :photo_inspireds, :img_desc
  	remove_column :music_inspireds, :writer_name
  end
end
