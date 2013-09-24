class CreatePhotoInspireds < ActiveRecord::Migration
  def change
    create_table :photo_inspireds do |t|
      t.string :photo_title
      t.string :photographer_name
      t.string :creation_title
      t.text :writing
      t.integer :user_id

      t.timestamps
    end
  end
end
