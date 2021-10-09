Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  resources :posts, only: %i[index show create update destroy]
  resources :bodies, only: %i[index create update destroy]
end
