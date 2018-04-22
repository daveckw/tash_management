# == Route Map
#
#            Prefix Verb   URI Pattern                       Controller#Action
#             login GET    /login(.:format)                  sessions#new
#                   POST   /login(.:format)                  sessions#create
#            logout DELETE /logout(.:format)                 sessions#destroy
#             about GET    /about(.:format)                  static_pages#about
#           contact GET    /contact(.:format)                static_pages#contact
#              root GET    /                                 static_pages#home
#           remarks GET    /remarks(.:format)                remarks#index
#                   POST   /remarks(.:format)                remarks#create
#        new_remark GET    /remarks/new(.:format)            remarks#new
#       edit_remark GET    /remarks/:id/edit(.:format)       remarks#edit
#            remark GET    /remarks/:id(.:format)            remarks#show
#                   PATCH  /remarks/:id(.:format)            remarks#update
#                   PUT    /remarks/:id(.:format)            remarks#update
#                   DELETE /remarks/:id(.:format)            remarks#destroy
#     project_tasks GET    /project_tasks(.:format)          project_tasks#index
#                   POST   /project_tasks(.:format)          project_tasks#create
#  new_project_task GET    /project_tasks/new(.:format)      project_tasks#new
# edit_project_task GET    /project_tasks/:id/edit(.:format) project_tasks#edit
#      project_task GET    /project_tasks/:id(.:format)      project_tasks#show
#                   PATCH  /project_tasks/:id(.:format)      project_tasks#update
#                   PUT    /project_tasks/:id(.:format)      project_tasks#update
#                   DELETE /project_tasks/:id(.:format)      project_tasks#destroy
#             users GET    /users(.:format)                  users#index
#                   POST   /users(.:format)                  users#create
#          new_user GET    /users/new(.:format)              users#new
#         edit_user GET    /users/:id/edit(.:format)         users#edit
#              user GET    /users/:id(.:format)              users#show
#                   PATCH  /users/:id(.:format)              users#update
#                   PUT    /users/:id(.:format)              users#update
#                   DELETE /users/:id(.:format)              users#destroy

Rails.application.routes.draw do

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

  root 'static_pages#home'
  resources :remarks
  resources :project_tasks
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
