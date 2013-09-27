class PhotoInspired < ActiveRecord::Base
  attr_accessible :creation_title, :writer_name, :img_desc, :writing, :user_id, :medium
  belongs_to :user
end
