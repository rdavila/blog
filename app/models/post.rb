class Post < ActiveRecord::Base
  default_scope :order => 'published_at DESC', :conditions => { :active => true }

  before_save :generate_html

  validates_presence_of :title, :slug, :body, :published_at

  has_many :categorizations, :dependent => :delete_all
  has_many :categories, :through => :categorizations

  protected

    def generate_html
      self.body_html = PostFormatter.format(self.body) if self.valid?
    end
end
