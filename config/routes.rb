Rails.application.routes.draw do
  resource :search, only: :create

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
