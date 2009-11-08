# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def recent_bookmarks
    d = WWW::Delicious.new('ruda84', 'RUda2009')
    d.posts_recent(:count => 10)
  end
end
