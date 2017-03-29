class ListingsController < ApplicationController

	def show
		@listing = Listing.find(params[:id])
	end

	def new
		@listing = Listing.new
	end

	def create
		@listing = Listing.new(list_params)

		if @listing.save
			redirect_to @listing
		else
			render 'new'
		end

	end


	private

	def list_params
		params.require(:listing).permit(:title, :description, :city, :state, :zipcode)
	end
end
