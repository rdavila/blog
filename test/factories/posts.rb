Factory.define(:first_post, :class => Post) do |p|
  p.title         'First post'
  p.body          'This is my first post for my blog'
  p.excerpt       'This is the excerpt'
  p.published_at  Time.now
  p.active        true
end

Factory.define(:last_post, :class => Post) do |p|
  p.title         'Last post'
  p.body          'This is my last post for my blog'
  p.excerpt       'This is the excerpt'
  p.published_at  2.days.from_now
  p.active        true
end

Factory.define :post, :parent => :first_post do |p|
  p.title         'Rails related post'
end
