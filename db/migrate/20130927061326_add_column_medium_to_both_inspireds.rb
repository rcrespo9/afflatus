class AddColumnMediumToBothInspireds < ActiveRecord::Migration
  def up
  	add_column :photo_inspireds, :medium, :string
	add_column :music_inspireds, :medium, :string
  end
  def down
  	remove_column :photo_inspireds, :medium
	remove_column :music_inspireds, :medium
  end
end
