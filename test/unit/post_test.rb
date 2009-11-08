require 'test_helper'

class PostTest < ActiveSupport::TestCase
  should_belong_to :category
end
