Rails.application.routes.draw do
  root 'shorties#new'

  get '/:id', to: 'redirects#show'

  resources :shorties, only: :create do
    collection do
      get 'shorty/:id', to: 'shorties#show', as: :shorty_id
    end
  end
end
