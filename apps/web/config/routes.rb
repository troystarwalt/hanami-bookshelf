# Configure your routes here
# See: http://www.rubydoc.info/gems/hanami-router/#Usage


resources :books
get '/', to: 'home#index', as: :home