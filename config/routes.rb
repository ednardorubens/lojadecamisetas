Rails.application.routes.draw do
  root :to => "produtos#index"
  resources :produtos, :defaults => { :format => :json }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end