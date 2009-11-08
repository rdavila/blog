class HomesController < ApplicationController
  def show
    @posts = Post.all(:limit => 11)
    @last_post = @posts.shift
  end
end
