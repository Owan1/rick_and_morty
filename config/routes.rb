Rails.application.routes.draw do
  #resources :characters
  root to: 'characters#index'
  #Make sure there is no RoutesError and it is redirected to Home Page
  match '*path' => redirect('/'), via: :get
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
