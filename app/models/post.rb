class Post < ActiveRecord::Base
  default_scope :order => 'published_at DESC', :conditions => { :active => true }

  validates_presence_of :title, :slug, :body, :published_at

  has_many :categorizations, :dependent => :delete_all
  has_many :categories, :through => :categorizations
end
