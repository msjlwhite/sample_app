Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Listing 3.5: Setting the root route.
  root 'application#hello'
  

end
