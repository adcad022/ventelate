Rails.application.routes.draw do

  # Routes for the Othervent resource:
  # CREATE
  get "/othervents/new", :controller => "othervents", :action => "new"
  post "/create_othervent", :controller => "othervents", :action => "create"

  # READ
  get "/othervents", :controller => "othervents", :action => "index"
  get "/othervents/:id", :controller => "othervents", :action => "show"

  # UPDATE
  get "/othervents/:id/edit", :controller => "othervents", :action => "edit"
  post "/update_othervent/:id", :controller => "othervents", :action => "update"

  # DELETE
  get "/delete_othervent/:id", :controller => "othervents", :action => "destroy"
  #------------------------------

  # Routes for the Lifevent resource:
  # CREATE
  get "/lifevents/new", :controller => "lifevents", :action => "new"
  post "/create_lifevent", :controller => "lifevents", :action => "create"

  # READ
  get "/lifevents", :controller => "lifevents", :action => "index"
  get "/lifevents/:id", :controller => "lifevents", :action => "show"

  # UPDATE
  get "/lifevents/:id/edit", :controller => "lifevents", :action => "edit"
  post "/update_lifevent/:id", :controller => "lifevents", :action => "update"

  # DELETE
  get "/delete_lifevent/:id", :controller => "lifevents", :action => "destroy"
  #------------------------------

  # Routes for the Relationshipvent resource:
  # CREATE
  get "/relationshipvents/new", :controller => "relationshipvents", :action => "new"
  post "/create_relationshipvent", :controller => "relationshipvents", :action => "create"

  # READ
  get "/relationshipvents", :controller => "relationshipvents", :action => "index"
  get "/relationshipvents/:id", :controller => "relationshipvents", :action => "show"

  # UPDATE
  get "/relationshipvents/:id/edit", :controller => "relationshipvents", :action => "edit"
  post "/update_relationshipvent/:id", :controller => "relationshipvents", :action => "update"

  # DELETE
  get "/delete_relationshipvent/:id", :controller => "relationshipvents", :action => "destroy"
  #------------------------------

  # Routes for the Workvent resource:
  # CREATE
  get "/workvents/new", :controller => "workvents", :action => "new"
  post "/create_workvent", :controller => "workvents", :action => "create"

  # READ
  get "/workvents", :controller => "workvents", :action => "index"
  get "/workvents/:id", :controller => "workvents", :action => "show"

  # UPDATE
  get "/workvents/:id/edit", :controller => "workvents", :action => "edit"
  post "/update_workvent/:id", :controller => "workvents", :action => "update"

  # DELETE
  get "/delete_workvent/:id", :controller => "workvents", :action => "destroy"
  #------------------------------

  # Routes for the Response resource:
  # CREATE
  get "/responses/new", :controller => "responses", :action => "new"
  post "/create_response", :controller => "responses", :action => "create"

  # READ
  get "/responses", :controller => "responses", :action => "index"
  get "/responses/:id", :controller => "responses", :action => "show"

  # UPDATE
  get "/responses/:id/edit", :controller => "responses", :action => "edit"
  post "/update_response/:id", :controller => "responses", :action => "update"

  # DELETE
  get "/delete_response/:id", :controller => "responses", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the Vent resource:
  # HOME
  get "/", :controller => "vents", :action => "home"
  # CREATE
  get "/vents/new", :controller => "vents", :action => "new"
  post "/create_vent", :controller => "vents", :action => "create"

  # READ
  get "/vents", :controller => "vents", :action => "index"
  get "/vents/:id", :controller => "vents", :action => "show"

  # UPDATE
  get "/vents/:id/edit", :controller => "vents", :action => "edit"
  post "/update_vent/:id", :controller => "vents", :action => "update"

  # DELETE
  get "/delete_vent/:id", :controller => "vents", :action => "destroy"
  #------------------------------

root "home#index"

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
