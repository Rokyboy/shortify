Rails.application.routes.draw do
  root 'shorties#new'

  resources :shorties, expect: %i(new index destroy)
end
