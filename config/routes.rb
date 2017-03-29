Rails.application.routes.draw do

	root 'categories#index'

	resources :categories do
		resources :subcategories
	end

	resources :listings

	match '/help', to: 'pages#help', via: :get
	match '/subcategories/find_by_category', to: 'subcategories#find_by_category', via: :post
end
