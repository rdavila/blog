require 'test_helper'

class CategorizationTest < ActiveSupport::TestCase
  should_have_db_columns :category_id, :post_id
  should_have_db_indices :category_id, :post_id

  should_belong_to :category
  should_belong_to :post
end
