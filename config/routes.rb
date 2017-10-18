Rails.application.routes.draw do
  post 'users/authenticate', :defaults => { :format => 'json' }

  get 'clusters/index', :defaults => { :format => 'json' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
