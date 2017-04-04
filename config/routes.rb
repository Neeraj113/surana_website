Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Category Pages Route
  root :to                                => "categories#index"
  get '/about-us.html'                    => redirect('/about-us')
  get '/about-us'                         => 'categories#about_us'
  get '/bathroom-accessories.html'        => redirect('/bathroom-accessories')
  get '/bathroom-accessories'             => 'categories#bathroom_accessories'
  get '/bathroom-fittings.html'           => redirect('/bathroom-fittings')
  get '/bathroom-fittings'                => 'categories#bathroom_fittings'
  get '/bathtubs.html'                    => redirect('/bathtubs')
  get '/bathtubs'                         => 'categories#bathtubs'
  get '/brass-valves-and-fittings.html'   => redirect('/brass-valves-and-fittings')
  get '/brass-valves-and-fittings'        => 'categories#brass_valves_and_fittings'
  get '/ci-manhole-covers.html'           => redirect('/ci-manhole-covers')
  get '/ci-manhole-covers'                => 'categories#ci_manhole_covers'
  get '/ci-pipes-and-fittings.html'       => redirect('/ci-pipes-and-fittings')
  get '/ci-pipes-and-fittings'            => 'categories#ci_pipes_and_fittings'
  get '/cpvc-pipes-and-fittings.html'     => redirect('/cpvc-pipes-and-fittings')
  get '/cpvc-pipes-and-fittings'          => 'categories#cpvc_pipes_and_fittings'
  get '/gi-pipes-and-fittings.html'       => redirect('/gi-pipes-and-fittings')
  get '/gi-pipes-and-fittings'            => 'categories#gi_pipes_and_fittings'
  get '/hand-dryer.html'                  => redirect('/hand-dryer')
  get '/hand-dryer'                       => 'categories#hand_dryer'
  get '/hdpe-pipes-and-fittings.html'     => redirect('/hdpe-pipes-and-fittings')
  get '/hdpe-pipes-and-fittings'          => 'categories#hdpe_pipes_and_fittings'
  get '/kitchen-sinks.html'               => redirect('/about-us')
  get '/kitchen-sinks'                    => 'categories#kitchen_sinks'
  get '/mirrors-and-cabinets.html'        => redirect('/mirrors-and-cabinets')
  get '/mirrors-and-cabinets'             => 'categories#mirrors_and_cabinets'
  get '/ppr-pipes-and-fittings.html'      => redirect('/ppr-pipes-and-fittings')
  get '/ppr-pipes-and-fittings'           => 'categories#ppr_pipes_and_fittings'
  get '/ptmt-fittings.html'               => redirect('/ptmt-fittings')
  get '/ptmt-fittings'                    => 'categories#ptmt_fittings'
  get '/pvc-pipes-and-fittings.html'      => redirect('/pvc-pipes-and-fittings')
  get '/pvc-pipes-and-fittings'           => 'categories#pvc_pipes_and_fittings'
  get '/sanitaryware.html'                => redirect('/sanitaryware')
  get '/sanitaryware'                     => 'categories#sanitaryware'
  get '/shower-enclosures.html'           => redirect('/shower-enclosures')
  get '/shower-enclosures'                => 'categories#shower_enclosures'
  get '/shower-panels.html'               => redirect('/shower-panels')
  get '/shower-panels'                    => 'categories#shower_panels'
  get '/steam-solutions.html'             => redirect('/steam-solutions')
  get '/steam-solutions'                  => 'categories#steam_solutions'
  get '/swr-pipes-and-fittings.html'      => redirect('/swr-pipes-and-fittings')
  get '/swr-pipes-and-fittings'           => 'categories#swr_pipes_and_fittings'
  get '/tiles.html'                       => redirect('/tiles')
  get '/tiles'                            => 'categories#tiles'
  get '/upvc-pipes-and-fittings.html'     => redirect('/upvc-pipes-and-fittings')
  get '/upvc-pipes-and-fittings'          => 'categories#upvc_pipes_and_fittings'
  get '/water-heater.html'                => redirect('/water-heater')
  get '/water-heater'                     => 'categories#water_heater'
  get '/water-tank.html'                  => redirect('/water-tank')
  get '/water-tank'                       => 'categories#water_tank'
  get '/contact.html'                     => redirect('/contact')
  post '/contact'                         => 'categories#contact'

  get '/login'                            => 'sessions#new', :as => 'login_path'
  post '/login'                           => 'sessions#create'
  delete '/logout'                        => 'sessions#destroy'

  # resources :users, :only =>[:new,:create,:index]
  get '/users/new'                        => 'users#new', :as => 'signup_path'
  post '/users/create'                    => 'users#create'
  get '/users'                            => 'users#index'
  get '/users/:id'                        => 'users#show', :as => 'user'

  get '/reports/new'                      => 'reports#new', :as => 'generate_report'
  post '/reports/create'                  => 'reports#create'
  get '/reports/show'                     => 'reports#show'
end
