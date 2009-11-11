require 'test_helper'

class PostTest < ActiveSupport::TestCase
  should_have_many :categories, :through => :categorizations
end
