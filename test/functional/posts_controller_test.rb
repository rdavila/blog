require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  should_route :get, '/search', :action => :search

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

  context 'Search posts with only 2 letters' do
    setup { get :search, :q => 'ab' }

    should_respond_with :success
    should_not_assign_to :posts
    
    should 'show invalid search message' do
      assert_select 'h4', :text => /No se encontraron/
    end
  end

  context 'Search posts with more of 2 letters' do
    context 'when the search has results' do
      setup do
        @post = Factory(:post, :title => 'rails')
        ThinkingSphinx::Test.index
        Post.stubs(:search).returns([@post])
        get :search, :q => 'rails'
      end

      should_respond_with :success
      should_assign_to :posts

      should 'find related posts' do
        assert_received(Post, :search) { |except| except.with('rails') }
      end

    end
  end
end
