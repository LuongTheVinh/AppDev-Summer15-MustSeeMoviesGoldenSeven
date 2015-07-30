Rails.application.routes.draw do
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

  # Landing Page
  get('/', { :controller => "movies", :action => 'index' })

  # DIRECTORS
  # Index: show all Directors
  get('/directors', { :controller => "directors", :action => 'index' })
  # Create new Director
  get('/directors/new', { :controller => "directors", :action => 'new_form' })
  get('/create_director', { :controller => "directors", :action => 'create_row' })
  # Show individual Director
  get('/directors/:id', { :controller => "directors", :action => 'show' })
  # Edit individual Director
  get('/directors/:id/edit', { :controller => "directors", :action => 'edit_form' })
  get('/update_director/:id', { :controller => "directors", :action => 'update_row' })
  # Delete individual Director
  get('/directors/:id/delete', { :controller => "directors", :action => 'destroy' })

  # ACTORS
  # Index: show all Actors
  get('/actors', { :controller => "actors", :action => 'index' })
  # Create new Actor
  get('/actors/new', { :controller => "actors", :action => 'new_form' })
  get('/create_actor', { :controller => "actors", :action => 'create_row' })
  # Show individual Actor
  get('/actors/:id', { :controller => "actors", :action => 'show' })
  # Edit individual Actor
  get('/actors/:id/edit', { :controller => "actors", :action => 'edit_form' })
  get('/update_actor/:id', { :controller => "actors", :action => 'update_row' })
  # Delete individual Actor
  get('/actors/:id/delete', { :controller => "actors", :action => 'destroy' })

  # MOVIES
  # Index: show all Movies
  get('/movies', { :controller => "movies", :action => 'index' })
  # Create new Movie
  get('/movies/new', { :controller => "movies", :action => 'new_form' })
  get('/create_movie', { :controller => "movies", :action => 'create_row' })
  # Show individual Movie
  get('/movies/:id', { :controller => "movies", :action => 'show' })
  # Edit individual Actor
  get('/movies/:id/edit', { :controller => "movies", :action => 'edit_form' })
  get('/update_movie/:id', { :controller => "movies", :action => 'update_row' })
  # Delete individual Movie
  get('/movies/:id/delete', { :controller => "movies", :action => 'destroy' })

end
