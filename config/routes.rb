WheresMyBoba::Application.routes.draw do

  root 'site#index'
  devise_for :users
  resources :site, :users

  get '/users/:id/adventures', to: 'users#adventures', as: :user_adventures
  post '/users/:id/faves', to: 'faves#create', as: :new_fave
  delete '/users/:id/faves', to: 'faves#destroy'

  #my_boba aliases
  
  get '/my_boba/search', to: 'my_boba#search', as: :search
  post '/my_boba/results', to: 'my_boba#results', as: :results
  get '/my_boba/adventures', to: 'adventures#all', as: :all_adventures

  get '/my_boba/:yelp_id', to: 'my_boba#show', as: :my_boba

  get 'my_boba/:yelp_id/adventures', to: 'adventures#index', as: :loc_adventures
  get 'my_boba/:yelp_id/adventures/new', to: 'adventures#new', as: :new_adventure
  get 'my_boba/:yelp_id/adventures/:id', to: 'adventures#show', as: :show_adventure
  get 'my_boba/:yelp_id/adventures/:id/edit', to: 'adventures#edit', as: :edit_adventure
  
  post 'my_boba/:yelp_id/adventures', to: 'adventures#create'
  patch 'my_boba/:yelp_id/adventures/:id', to: 'adventures#update'
  put 'my_boba/:yelp_id/adventures/:id', to: 'adventures#update'
  delete 'my_boba/:yelp_id/adventures/:id', to: 'adventures#destroy'


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
