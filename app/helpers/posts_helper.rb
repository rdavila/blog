module PostsHelper
  def post_link(post, title=nil, anchor=nil)
    link_to title || post.title, 
      seo_post_url(post.published_at.year, post.published_at.month, post.published_at.day, post.friendly_id, :anchor => anchor)
  end
end
