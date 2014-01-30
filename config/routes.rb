Knowshawn::Application.routes.draw do

  # get | post | put | patch | delete

  # get "/url-path", to: "controller#action", as: url_path_name
  root to: "static_pages#home"
  resources :posts
  get "/blog", to: "posts#index", as: :posts # I wanted to rewrite posts/index to /blog
  post "/blog", to: "posts#create", as: :posts

  get "/gallery", to: "static_pages#gallery", as: :gallery
  get "/about_me", to: "static_pages#about_me", as: :about_me 
  get "/about_me", to: "static_pages#about_me", as: :about_me

  # Syntax for Rails 3 and Rails 4
  # get 'about_us' => 'company#about_us', as: :about_us

  # NAME   VERB     URL             CONRTROLLER PATH
  #about_us GET /about_us(.:format) company#about_us

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
