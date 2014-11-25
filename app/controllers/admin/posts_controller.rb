module Admin
  class PostsController < Para::Admin::ResourcesController
    resource :post, ParaBlog::Post
  end
end
