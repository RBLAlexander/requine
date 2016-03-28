class Offer < ActiveRecord::Base
	validates :description, presence: true, length: {in: 25..1000}
	has_many :items

	accepts_nested_attributes_for :items
end
