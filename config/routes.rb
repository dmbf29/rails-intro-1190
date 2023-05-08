Rails.application.routes.draw do
  # le wagon convention -> pages controller to handle all "static" pages
  # HTTP_VERB '/path', to: 'controller#action', as: :prefix (aka nickname)
  # get '/', to: 'pages#home', as: :home
  root to: 'pages#home' # gives prefix automatically
  get '/about', to: 'pages#about', as: :about
  get '/contact', to: 'pages#contact', as: :contact
end

# when 1 then @pages_controller.about
