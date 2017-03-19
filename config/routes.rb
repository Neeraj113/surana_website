Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Category Pages Route
  get '/'                           => 'categories#index'
  get '/about-us'                   => 'categories#about_us'
  get '/bathroom-accessories'    		=> 'categories#bathroom_accessories'
  get '/bathroom-fittings' 			    => 'categories#bathroom_fittings'
  get '/bathtubs' 					        => 'categories#bathtubs'
  get '/brass-valves-and-fittings' 	=> 'categories#brass_valves_and_fittings'
  get '/ci-manhole-covers' 			    => 'categories#ci_manhole_covers'
  get '/ci-pipes-and-fittings' 		  => 'categories#ci_pipes_and_fittings'
  get '/cpvc-pipes-and-fittings' 	  => 'categories#cpvc_pipes_and_fittings'
  get '/gi-pipes-and-fittings' 		  => 'categories#gi_pipes_and_fittings'
  get '/hand-dryer' 				        => 'categories#hand_dryer'
  get '/hdpe-pipes-and-fittings' 	  => 'categories#hdpe_pipes_and_fittings'
  get '/kitchen-sinks'        			=> 'categories#kitchen_sinks'
  get '/mirrors-and-cabinets'       => 'categories#mirrors_and_cabinets'
  get '/ppr-pipes-and-fittings'     => 'categories#ppr_pipes_and_fittings'
  get '/ptmt-fittings'              => 'categories#ptmt_fittings'
  get '/pvc-pipes-and-fittings' 	  => 'categories#pvc_pipes_and_fittings'
  get '/sanitaryware'        				=> 'categories#sanitaryware'
  get '/shower-enclosures' 	    		=> 'categories#shower_enclosures'
  get '/shower-panels'	 			      => 'categories#shower_panels'
  get '/swr-pipes-and-fittings' 	  => 'categories#swr_pipes_and_fittings'
  get '/tiles' 						          => 'categories#tiles'
  get '/upvc-pipes-and-fittings' 	  => 'categories#upvc_pipes_and_fittings'
  get '/water-heater'	 			        => 'categories#water_heater'
  get '/water-tank'	 				        => 'categories#water_tank'
  post '/contact'                   => 'categories#contact'

  get '/login'                      => 'sessions#new', :as => 'login_path'
  post '/login'                     => 'sessions#create'
  delete '/logout'                  => 'sessions#destroy'

  # resources :users, :only =>[:new,:create,:index]
  get '/users/new'                  => 'users#new', :as => 'signup_path'
  post '/users/create'              => 'users#create'
  get '/users'                      => 'users#index'
  get '/users/:id'                  => 'users#show', :as => 'user'

  get '/reports/new'                => 'reports#new'
  post '/reports/create'            => 'reports#create'
  get '/reports/show'               => 'reports#show'
end
