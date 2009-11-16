class HomesController < ApplicationController
  def show
    @posts = Post.active(:limit => 11)
    @last_post = @posts.shift
  end
end
