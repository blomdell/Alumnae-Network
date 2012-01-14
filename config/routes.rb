AlumnaeNetwork::Application.routes.draw do
  	
  	resources :posts do 
		resources :comments
	end
	
  	get "home/index"

	resources :users 
	resources :shared

	match '/auth/twitter/callback' => 'sessions#create'
	match "/signout" => "sessions#destroy", :as => :signout

	root :to => 'home#index'

end
