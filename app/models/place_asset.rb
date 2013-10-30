class PlaceAsset < ActiveRecord::Base
  attr_accessible :image_content_type, :image_file_name, :image_file_size,:caption, :place_id,:place_asset,
                  :image
  attr_accessor :place_asset
  
  belongs_to :place
  has_attached_file :image,
      :styles => {
        :thumb=> "100x100#",
        :small  => "300x300>",
        :large => "600x600>"
          }
end
