class MusicInspired < ActiveRecord::Base
  attr_accessible :artist_name, :creation_title, :writing, :song_title, :user_id, :writer_name
  belongs_to :user
end
