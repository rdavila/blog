require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  should_validate_presence_of :name

  should_have_many :categorizations
  should_have_many :posts, :through => :categorizations
end
