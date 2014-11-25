ParaBlog::Engine.routes.draw do
  resources :posts, only: :show do
    resources :comments, only: [:show, :create, :index]
  end
end
