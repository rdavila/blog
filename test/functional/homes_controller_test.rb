require 'test_helper'

class HomesControllerTest < ActionController::TestCase
  context 'on GET show' do
    setup do
      posts = [Factory(:last_post), Factory(:first_post)]
      Post.stubs(:active).returns(posts)

      get :show
    end

    should_render_template :show
    should 'find and assign the last post' do
      assert_received(Post, :active) { |expect| expect.with(:limit => 11) }
      assert_not_nil assigns(:last_post)
      assert_not_nil assigns(:posts)
    end
  end
end
