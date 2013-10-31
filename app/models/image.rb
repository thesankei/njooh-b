class Image < ActiveRecord::Base
  attr_accessible :image_content_type, :image_file_name, :image_file_size, :caption, :user_id, :image
  
  belongs_to :user
  
  has_attached_file :image, :styles => { :large => "640x480", :medium => "300x300>", :custom => "300x300>",
     :thumb => "100x100>" }
end
