Rails.application.routes.draw do
  root 'urls#index'
  get 'urls/recent'
  post 'urls/create'
  get '/:shortie' => 'urls#redirect', as: 'given_long_url'
end
