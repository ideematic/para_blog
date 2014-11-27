module ParaBlog
  class PostsController < ApplicationController

    def index
      @q = ParaBlog::Post.active.ordered.search params[:q]
      @posts = @q.result.page(params[:page]).per 10
    end

    def show
      @post = ParaBlog::Post.active.find params[:id]
    end
  end
end
