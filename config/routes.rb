Programming::Application.routes.draw do
  root to: 'skills#home'

  resources :skills
  resources :users
  resources :categories
  # resource :authentications
  

  # get 'skills' => 'skills#index'
  # get 'skills/new' => 'skills#new' #shows form to add new skills
  # get 'skills/:id' => 'skills#show' #required to show skills

  # get 'skills/edit/:id' => 'skills#edit'

  # post 'skills' => 'skills#create' #creating new skill
  # delete 'skills/:id' => 'skills#destroy'

  # put 'skills/:id' => 'skills#update'

  
  # get 'users/new' => 'users#new'
  # post 'users' => 'users#create'

  get 'authentications/new' => 'authentications#new'
  post 'authentications' => 'authentications#create'
  delete 'authentications/:id' => 'authentications#destroy'


end


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
# end
