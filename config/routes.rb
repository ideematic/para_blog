ParaBlog::Engine.routes.draw do
  resources :posts, only: [:index, :show] do
    resources :comments, only: [:show, :create]
  end
end
