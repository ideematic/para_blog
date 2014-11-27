ParaBlog::Engine.routes.draw do
  resources :posts, only: [:index, :show], path: '' do
    resources :comments, only: [:show, :create]
  end
end
