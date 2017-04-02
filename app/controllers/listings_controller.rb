class ListingsController < ApplicationController
	before_action :find_list, only: [:show, :edit, :update, :destroy]
	before_action :correct_user, only: [:edit, :update, :destroy]
	before_action :authenticate_user!, except: [:show]

	def show
		@sub = @listing.subcategory
	end

	def new
		@listing = current_user.listings.build
	end

	def create
		@listing = current_user.listings.build(list_params)

		if @listing.save
			redirect_to @listing
			flash[:notice] = "Post successfully created"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		@listing.update(list_params)
		redirect_to @listing
	end

	def destroy
		@listing.destroy
		redirect_to mylistings_path
		flash[:notice] = "Post has been deleted"
	end

	def search
		@listings = Listing.search(params)
	end

	def mylistings
		@listings = Listing.where(user: current_user)
	end


	private

	def list_params
		params.require(:listing).permit(:title, :description, :city, :state, :zipcode, :category_id, :subcategory_id)
	end

	def find_list
		@listing = Listing.find(params[:id])
	end

	def correct_user
      	@listing = Listing.find(params[:id])

      	unless current_user == @listing.user
      		redirect_to root_path, alert: "You're not authorized to edit this post"
      	end
    end
end
