Rails.application.routes.draw do
  get '/', to: 'props#index'    
  resources :props
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
