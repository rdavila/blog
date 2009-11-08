class Post < ActiveRecord::Base
  default_scope :order => 'published_at DESC', :conditions => { :active => true }

  belongs_to :category, :counter_cache => true
end
