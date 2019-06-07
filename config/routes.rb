Rails.application.routes.draw do
  get 'users/new'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'foo/bar'
  # get 'foo/baz'

  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # get 'static_pages/contact'

  # Listing 3.5: Setting the root route.
  # root 'application#hello'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help', as: 'help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'

end
