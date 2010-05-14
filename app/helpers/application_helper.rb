# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def title(title)
    site_name = 'Rubén on Rails'
    content_for :title do
      title.present? ? "#{title} - #{site_name}" : site_name
    end
  end

  def recent_bookmarks
    d = WWW::Delicious.new(APP_CONFIG[:delicious][:user], 
                           APP_CONFIG[:delicious][:password])
    d.posts_recent(:count => 10)
  end

  def recent_tweets
    TWITTER_CLIENT.user_timeline(:count => 10).map { |t| [t[:text], t[:id]] }
  end
end
