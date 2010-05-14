class HomesController < ApplicationController
  def show
    @posts = Post.active(:limit => 11)
    @last_post = @posts.shift

    respond_to do |format|
      format.html
      format.atom do
        @posts = [@last_post] + @posts[0..8]
      end
    end
  end
end
