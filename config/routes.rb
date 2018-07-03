Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "time#show"

  resource :time
  resource :session, only: %i(new create destroy)

end
