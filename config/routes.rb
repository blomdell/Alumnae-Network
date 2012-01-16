AlumnaeNetwork::Application.routes.draw do
  	resources :publications
  	resources :users 
	resources :shared
  	resources :posts do 
		resources :comments
	end

	match '/auth/twitter/callback' => 'sessions#create'
	match "/signout" => "sessions#destroy", :as => :signout


	root :to => 'home#index'
	get "home/index"
end
