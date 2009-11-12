require 'test_helper'

class PostTest < ActiveSupport::TestCase
  should_have_many :categories, :through => :categorizations

  should_validate_presence_of :title, :slug, :body, :published_at
  #show: id, title, slug, active, body, excerpt, published_at, created_at, updated_at
end
