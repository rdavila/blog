class HomesController < ApplicationController
  def show
    @last_post = Post.last
  end
end
