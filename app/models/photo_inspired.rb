class PhotoInspired < ActiveRecord::Base
  attr_accessible :creation_title, :photo_title, :photographer_name, :writing, :user_id
  belongs_to :user
end
