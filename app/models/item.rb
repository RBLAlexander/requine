

class Item < ActiveRecord::Base
	mount_uploader :image, ImageUploader, :on => :file_name
	validates_presence_of :image
	belongs_to :trade
end
