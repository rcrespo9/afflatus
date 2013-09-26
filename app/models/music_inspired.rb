class MusicInspired < ActiveRecord::Base
  attr_accessible :album_name, :artist_name, :creation_title, :writing, :song_title, :user_id
    validates :creation_title, presence: true
  validates :writing, presence: true
  belongs_to :user
end
