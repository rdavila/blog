module PostsHelper
  def post_link(post)
    link_to post.title, 
      seo_post_path(post.published_at.year, post.published_at.month, post.published_at.day, post.friendly_id)
  end
end
