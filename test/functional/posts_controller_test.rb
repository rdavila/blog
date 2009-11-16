require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  context 'on GET show' do
    setup do
      @post = Factory.create(:last_post)
      Post.stubs(:find).returns(@post)
    
      get :show, :id => @post.friendly_id
    end

    should_render_template :show

    should 'find and assing the post' do
      assert_received(Post, :find) { |expect| expect.with('last-post') }
      assert_equal @post, assigns(:post)
    end
  end
end
