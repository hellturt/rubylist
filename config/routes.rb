Rails.application.routes.draw do

  devise_for :users
	root 'categories#index'

	resources :categories do
		resources :subcategories
	end

	resources :listings do
		collection do
			get 'search'
		end
	end
	

	match '/help', to: 'pages#help', via: :get
	match '/mylistings', to: 'listings#mylistings', via: :get
	match '/subcategories/find_by_category', to: 'subcategories#find_by_category', via: :post

end
