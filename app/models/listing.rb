class Listing < ApplicationRecord
	belongs_to :category, required: false
	belongs_to :subcategory, required: false
	belongs_to :user
	
	validates :user_id, presence: true
	validates :title, :description, :city, :state, :zipcode, :category_id, :subcategory_id, presence: true

	geocoded_by :full_address
	after_validation :geocode

	def full_address
		[city, state, zipcode].join(', ')
	end


	def self.search(params)
		listings = Listing.where(category_id: params[:category].to_i)
		listings = listings.where("title like ? or description like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
		listings = listings.near(params[:location], 20) if params[:location].present?
		listings
	end
end
