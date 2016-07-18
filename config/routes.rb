Rails.application.routes.draw do
	devise_for :users

	root 'users#show'

	# devise_for :users, :controllers => { registrations: 'registrations' }

 
  resources :users do
  	resources :entries
  end

	# get    '/users/sign_in', to: 'devise/sessions#new'
	# post   '/users/sign_in', to: 'devise/sessions#create'
	# delete '/users/sign_out', to: 'devise/sessions#destroy'
	# post   '/users/password', to: 'devise/passwords#create'
	# get    '/users/password/new', to: 'devise/passwords#new'
	# get    '/users/password/edit', to: 'devise/passwords#edit'
	# put    '/users/password', to: 'devise/passwords#update'

	# post   '/users', to: 'registrations#create'
	# get    '/users/sign_up', to: 'registrations#new'
	# get    '/users/edit', to: 'registrations#edit'
	# put    '/users', to: 'registrations#update'
	# delete '/users', to: 'registrations#destroy'

  get    '/users/:user_id', to: 'users#show'

  # get    '/users/:user_id/entries', to: 'entries#index'
  post   '/users/:user_id/entries', to: 'entries#create'
  get		 '/users/:user_id/entries/new', to: 'entries#new'
  get    '/users/:user_id/entries/:id/edit', to: 'entries#edit'
  put    '/users/:user_id/entries/:id', to: 'entries#update'
  delete '/users/:user_id/entries/:id', to: 'entries#destroy'

end

#                   Prefix Verb   URI Pattern                                Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                   devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                   devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                  devise/sessions#destroy
#            user_password POST   /users/password(.:format)                  devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)              devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)             devise/passwords#edit
#                          PATCH  /users/password(.:format)                  devise/passwords#update
#                          PUT    /users/password(.:format)                  devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                    devise/registrations#cancel
#        user_registration POST   /users(.:format)                           devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                   devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                      devise/registrations#edit
#                          PATCH  /users(.:format)                           devise/registrations#update
#                          PUT    /users(.:format)                           devise/registrations#update
#                          DELETE /users(.:format)                           devise/registrations#destroy
#                     root GET    /                                          users#show
#             user_entries GET    /users/:user_id/entries(.:format)          entries#index
#                          POST   /users/:user_id/entries(.:format)          entries#create
#           new_user_entry GET    /users/:user_id/entries/new(.:format)      entries#new
#          edit_user_entry GET    /users/:user_id/entries/:id/edit(.:format) entries#edit
#               user_entry GET    /users/:user_id/entries/:id(.:format)      entries#show
#                          PATCH  /users/:user_id/entries/:id(.:format)      entries#update
#                          PUT    /users/:user_id/entries/:id(.:format)      entries#update
#                          DELETE /users/:user_id/entries/:id(.:format)      entries#destroy
#                    users GET    /users(.:format)                           users#index
#                          POST   /users(.:format)                           users#create
#                 new_user GET    /users/new(.:format)                       users#new
#                edit_user GET    /users/:id/edit(.:format)                  users#edit
#                     user GET    /users/:id(.:format)                       users#show
#                          PATCH  /users/:id(.:format)                       users#update
#                          PUT    /users/:id(.:format)                       users#update
#                          DELETE /users/:id(.:format)                       users#destroy
