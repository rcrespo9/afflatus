class MusicInspired < ActiveRecord::Base
  attr_accessible :album_name, :artist_name, :creation_title, :writing, :song_title, :user_id
  belongs_to :user
end
