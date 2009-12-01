class Category < ActiveRecord::Base
  has_friendly_id :name, :use_slug => true

  validates_presence_of :name

  has_many :categorizations
  has_many :posts, :through => :categorizations
end
