class Categorization < ActiveRecord::Base
  belongs_to :category, :counter_cache => 'posts_count'
  belongs_to :post
end
