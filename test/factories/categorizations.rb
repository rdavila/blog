Factory.define :category_with_posts, :class => Categorization do |c|
  c.association :post
  c.association :category, :factory => :rails_category
end
