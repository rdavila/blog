module HomesHelper
  def post_date(post)
    capture_haml do
      haml_tag :div, { :class => 'date' } do
        haml_tag :span, post.published_at.day, :class => 'day'
        haml_tag :span, I18n.l(post.published_at, :format => '%b').upcase, :class => 'month'
      end
    end
  end
end
