require 'test_helper'

class PostTest < ActiveSupport::TestCase
  should_have_many :categories, :through => :categorizations

  should_validate_presence_of :title, :body, :published_at
end
