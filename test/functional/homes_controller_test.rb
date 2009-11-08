require 'test_helper'

class HomesControllerTest < ActionController::TestCase
  context 'on GET show' do
    setup do
      @post = Factory.build(:last_post)
      Post.stubs(:last).returns(@post)
      get :show
    end

    should_render_template :show
    should 'find and assign the last post' do
      assert_received(Post, :last)
      assert_equal assigns(:last_post),  @post
    end
  end
end
