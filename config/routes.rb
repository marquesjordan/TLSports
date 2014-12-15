Trueleaguesports::Application.routes.draw do


  get "locations/index"
  get "locations/new"
  get "locations/show"
  get "locations/edit"

  devise_for :users
  root "pages#home"

  get "pages/home"
  get "pages/about"
  get "pages/portal"      => "pages#portal"

  get 'leagues/'          => 'leagues#index',     as: :leagues,      as: 'user_root'
  get 'leagues/new'       => 'leagues#new',       as: :new_league
  get 'leagues/:id'       => 'leagues#show',      as: :league
  post 'leagues/'         => 'leagues#create'
  get 'leagues/:id/edit'  => 'leagues#edit',      as: :edit_league
  patch 'leagues/:id'     => 'leagues#update',    as: :update_league
  delete 'leagues/:id'    => 'leagues#destroy',   as: :delete_league

  get 'teams/'          => 'teams#index',     as: :teams
  get 'teams/new'       => 'teams#new',       as: :new_team
  get 'teams/:id'       => 'teams#show',      as: :team
  post 'teams/'         => 'teams#create'
  get 'teams/:id/edit'  => 'teams#edit',      as: :edit_team
  patch 'teams/:id'     => 'teams#update',    as: :update_team
  delete 'teams/:id'    => 'teams#destroy',   as: :delete_team

  get 'league_teams/'          => 'league_teams#index',     as: :leagueteams
  get 'league_teams/new'       => 'league_teams#new',       as: :new_leagueteam
  get 'league_teams/:id'       => 'league_teams#show',      as: :leagueteam
  post 'league_teams/'         => 'league_teams#create'
  get 'league_teams/:id/edit'  => 'league_teams#edit',      as: :edit_leagueteam
  patch 'league_teams/:id'     => 'league_teams#update',    as: :update_leagueteam
  delete 'league_teams/:id'    => 'league_teams#destroy',   as: :delete_leagueteam


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
