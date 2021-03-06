Rails.application.routes.draw do
  devise_for :pro, :controllers => { registrations: 'registrations_pro' }
  devise_for :ele, :controllers => { registrations: 'registrations_ele' }
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'events#index'

  get "events/subscribe/:id", to: "events#subscribe"

  get "events/:id/:id", to: "events#addprotoinvitation"
  get "events/:id/:id", to: "events#addeletoinvitation"
  
  
end
