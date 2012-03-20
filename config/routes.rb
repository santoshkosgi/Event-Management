EventManager::Application.routes.draw do

   ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :coupons

  get "home/index"

  resources :users do
    get 'order', :on => :collection
  end

  resources :user_sessions,:only => [:new, :create, :destroy,:index]
  resources :events do
    get 'register', :on => :collection
    post 'create1', :on => :collection
    post 'attend' ,:on => :collection
  end
  # The priority is based upon order of creation:
  # first created -> highest priority.

  match "logout" => 'user_sessions#destroy'

  match "return" => 'events#return'

  match 'getemail' =>"events#getemail"
  match 'gotemail' =>"authorizations#gotemail"
  match "/auth/:provider/callback", :controller => "authorizations", :action => "create"
  match "/auth/failure", :controller => "authorizations", :action => "failure"

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
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
