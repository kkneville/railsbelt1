Rails.application.routes.draw do
  
  get 'likes/index'

  get 'likes/new'

  post 'likes/create' => 'likes#create', as: 'add_like'

  get 'likes/show'

  get 'likes/edit'

  get 'likes/update'

  get 'likes/delete'

  get 'brightideas' => 'ideas#index', as: 'brightideas'

  get 'ideas/new'

  post 'ideas/create' => 'ideas#create', as: "new_idea"

  get 'ideas/show' => 'ideas#show', as: 'idea_detail'

  get 'ideas/edit'

  get 'ideas/update'

  delete 'ideas/delete' => 'ideas#delete', as: 'delete_idea'

  root 'users#new'

  get 'index' => 'users#index', as: 'ideas'
 
  get 'register' => 'users#new', as: 'register_page'

  post 'register' => 'users#create', as: 'register'

  get 'showuser' => 'users#show', as: 'user'

  get 'users/edit' => 'users#edit', as: 'edit_user'

  patch 'users/update' => 'users#update', as: 'update_user'

  get 'users/delete'

  get 'sessions/index'

  get 'login' => 'sessions#new', as: 'login_page'

  post 'login' => 'sessions#create', as: 'login'

  get 'sessions/show'

  get 'sessions/edit'

  get 'sessions/update'

  delete 'logout' => 'sessions#destroy', as: 'logout'


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
