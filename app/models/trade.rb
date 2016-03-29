class Trade < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 5 }
	validates :description, presence: true, length: {in: 25..1000}
	validates :user_id, presence: true
	has_many :items, dependent: :destroy

	accepts_nested_attributes_for :items
	belongs_to :user
end
