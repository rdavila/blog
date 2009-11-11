class Post < ActiveRecord::Base
  default_scope :order => 'published_at DESC', :conditions => { :active => true }

  has_many :categorizations
  has_many :categories, :through => :categorizations
end
