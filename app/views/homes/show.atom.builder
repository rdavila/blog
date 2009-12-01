atom_feed(:schema_date => '2009') do |feed|
  feed.title("Rubén on Rails' Blog")
  feed.updated(@posts.first.published_at)

  for post in @posts
    feed.entry(post, { :url => seo_post_url(post.published_at.year, post.published_at.month, post.published_at.day, post.friendly_id) }) do |entry|
      entry.title(post.title)
      entry.content(post.body_html, :type => 'html')
      #entry.link    "rel" => "alternate", "href" => seo_post_url(post.published_at.year, post.published_at.month, post.published_at.day, post.friendly_id)
      #entry.url  "type" => "text/html", "rel" => "alternate", "href" => seo_post_url(post.published_at.year, post.published_at.month, post.published_at.day, post.friendly_id)
      entry.author do |author|
        author.name("Rubén Dávila")
      end
    end
  end
end


#xml.instruct!
#
#xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
#
#xml.title   "Feed Name"
#xml.link    "rel" => "self", "href" => url_for(:only_path => false, :controller => 'home', :action => 'show', :format => :atom)
#xml.link    "rel" => "alternate", "href" => url_for(:only_path => false, :controller => 'home')
#xml.id      url_for(:only_path => false, :controller => 'posts')
#xml.updated @posts.first.updated_at.strftime "%Y-%m-%dT%H:%M:%SZ" if @posts.any?
#xml.author  { xml.name "Author Name" }
#
#  @posts.each do |post|
#    xml.entry do
#      xml.title   post.title
#      xml.link    "rel" => "alternate", "href" => seo_post_url(post.published_at.year, post.published_at.month, post.published_at.day, post.friendly_id)
#
#      xml.id      seo_post_url(post.published_at.year, post.published_at.month, post.published_at.day, post.friendly_id)
#
#      xml.updated post.updated_at.strftime "%Y-%m-%dT%H:%M:%SZ"
#      xml.author  { xml.name 'ddddd' }
#      xml.content post.body_html
#    end
#  end
#
#end
#
