class PagesController < ApplicationController
  def archives
    @months = Post.find_all_grouped_by_month
  end
end
