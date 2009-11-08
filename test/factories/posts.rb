Factory.define(:first_post, :class => Post) do |p|
  p.title         'First post'
  p.body          'This is my first post for my blog'
  p.excerpt       'This is the excerpt'
  p.published_at  Time.now
  p.active        true
  p.association   :category, :factory => :rails_category
end

Factory.define(:last_post, :class => Post) do |p|
  p.title         'Last post'
  p.body          'This is my last post for my blog'
  p.excerpt       'This is the excerpt'
  p.published_at  2.days.from_now
  p.active        true
  p.association   :category, :factory => :design_category
end
