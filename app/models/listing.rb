class Listing < ApplicationRecord
	belongs_to :category, required: false
	belongs_to :subcategory, required: false
	
	validates :title, :description, :city, :state, :zipcode, presence: true
end
