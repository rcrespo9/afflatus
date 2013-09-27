class PhotoInspired < ActiveRecord::Base
  attr_accessible :creation_title, :writer_name, :img_desc, :writing, :user_id
  belongs_to :user
end
