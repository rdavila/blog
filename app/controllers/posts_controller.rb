class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def search
    if params[:q].strip.size > 2
      @posts = Post.search(params[:q])
    end
  end
end
