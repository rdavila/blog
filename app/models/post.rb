class Post < ActiveRecord::Base
  has_friendly_id :title, :use_slug => true

  default_scope :order => 'published_at DESC'

  before_save :generate_html

  validates_presence_of :title, :body, :published_at

  has_many :categorizations, :dependent => :destroy
  has_many :categories, :through => :categorizations,
    :after_remove => :update_category_counter

  protected

    def generate_html
      self.body_html = PostFormatter.format(self.body) if self.valid?
    end

    def update_category_counter(category)
      Category.decrement_counter(:posts_count, category.id)
    end
end
