

class Item < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	belongs_to :trade
end
