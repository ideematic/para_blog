module Admin
  class PostsController < Para::Admin::ResourcesController
    resource :post, class: ParaBlog::Post
  end
end
