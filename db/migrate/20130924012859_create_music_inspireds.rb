class CreateMusicInspireds < ActiveRecord::Migration
  def change
    create_table :music_inspireds do |t|
      t.string :song_title
      t.string :artist_name
      t.string :album_name
      t.string :creation_title
      t.text :writing
      t.integer :user_id

      t.timestamps
    end
  end
end
