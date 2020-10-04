Rails.application.routes.draw do
  #resources :characters
  ##Set Character#Index as the Root Page
  root to: 'characters#index'
  ##Make sure there is no RoutesError and it is redirected to Home Page (Character#Index)
  match '*path' => redirect('/'), via: :get
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
