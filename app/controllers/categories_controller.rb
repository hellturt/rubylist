class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
		@listings = Listing.where(category_id: params[:id]).order("created_at DESC")
	end

end
