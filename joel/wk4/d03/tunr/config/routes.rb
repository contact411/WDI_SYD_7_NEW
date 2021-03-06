# == Route Map
#
#                   Prefix Verb   URI Pattern                       Controller#Action
#           mixtapes_index GET    /mixtapes/index(.:format)         mixtapes#index
#              songs_index GET    /songs/index(.:format)            songs#index
#         new_user_session GET    /users/sign_in(.:format)          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
#            user_password POST   /users/password(.:format)         devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
#                          PATCH  /users/password(.:format)         devise/passwords#update
#                          PUT    /users/password(.:format)         devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)           devise/registrations#cancel
#        user_registration POST   /users(.:format)                  devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)          devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)             devise/registrations#edit
#                          PATCH  /users(.:format)                  devise/registrations#update
#                          PUT    /users(.:format)                  devise/registrations#update
#                          DELETE /users(.:format)                  devise/registrations#destroy
#        user_confirmation POST   /users/confirmation(.:format)     devise/confirmations#create
#    new_user_confirmation GET    /users/confirmation/new(.:format) devise/confirmations#new
#                          GET    /users/confirmation(.:format)     devise/confirmations#show
#                  artists GET    /artists(.:format)                artists#index
#                          POST   /artists(.:format)                artists#create
#               new_artist GET    /artists/new(.:format)            artists#new
#              edit_artist GET    /artists/:id/edit(.:format)       artists#edit
#                   artist GET    /artists/:id(.:format)            artists#show
#                          PATCH  /artists/:id(.:format)            artists#update
#                          PUT    /artists/:id(.:format)            artists#update
#                          DELETE /artists/:id(.:format)            artists#destroy
#                    songs GET    /songs(.:format)                  songs#index
#                          POST   /songs(.:format)                  songs#create
#                 new_song GET    /songs/new(.:format)              songs#new
#                edit_song GET    /songs/:id/edit(.:format)         songs#edit
#                     song GET    /songs/:id(.:format)              songs#show
#                          PATCH  /songs/:id(.:format)              songs#update
#                          PUT    /songs/:id(.:format)              songs#update
#                          DELETE /songs/:id(.:format)              songs#destroy
#                 mixtapes GET    /mixtapes(.:format)               mixtapes#index
#                          POST   /mixtapes(.:format)               mixtapes#create
#              new_mixtape GET    /mixtapes/new(.:format)           mixtapes#new
#             edit_mixtape GET    /mixtapes/:id/edit(.:format)      mixtapes#edit
#                  mixtape GET    /mixtapes/:id(.:format)           mixtapes#show
#                          PATCH  /mixtapes/:id(.:format)           mixtapes#update
#                          PUT    /mixtapes/:id(.:format)           mixtapes#update
#                          DELETE /mixtapes/:id(.:format)           mixtapes#destroy
#                     root GET    /                                 welcome#index
#

Rails.application.routes.draw do

  get 'mixtapes/index'

  get 'songs/index'

  devise_for :users

  resources :artists
  resources :songs
  resources :mixtapes

  root "welcome#index"

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
