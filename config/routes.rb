Rails.application.routes.draw do
  root 'urls#index'
  get 'urls/recent'
end
