Rails.application.routes.draw do
  # route is going to be the http request and do crud actions in the the browser
  # lead somewhere in the controller 
  # combo url + http request

  # root 'controller#action' - home page to the url pattern
  # root 'static#home'
  # resources :controller - gen all the routes and actions for a controller
  # resources :contacts
  # - with relationships with models you are going to embed two levels deep
  # resources :contacts do 
  #   resources :notes
  # end

  # bad 
  # resources :contacts do 
  #   resources :notes do 
  #     resources :comments 
  #   end
  # end

  # best practice 
  # resources :contacts do 
  #   resources :notes
  # end

  # resources :notes  do
  #   resources :comments
  # end
  # custom routes - doing the routes  by hand 
  # httpverb 'pattern', to: 'controller#action'
  # get        Read
  # post        create
  # put / patch  update
  # delete       destroy
  # get '/taco'
  # get '/contacts', to: 'contacts#index'

  root 'subs#index'

  resources :subs do
    resources :topic
  end

  #bad
  #resources :subs do
    resources :topics do
        resources :comments
    end
  
end