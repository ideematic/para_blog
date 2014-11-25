module Admin
  class PostComponentController < Para::Admin::ComponentController
    def show
      @q = @component.posts.search params[:q]
      @resources = @q.result.page(params[:page]).per(10)
    end
  end
end
