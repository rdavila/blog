require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  should_route :get, 'categories/rails', :action => :show, :id => 'rails'

  context 'on GET to :show' do
    
    context 'with posts' do
      setup do
        categorization = Factory(:category_with_posts)
        category = categorization.category
        @post = categorization.post
        Category.stubs(:all).returns([category])
        Category.stubs(:find).returns(category)
        get :show, :id => 'rails'
      end

      should_respond_with :success
      should_assign_to :category
      should_assign_to :posts

      should 'find the category' do
        assert_received(Category, :find) { |expect| expect.with('rails')  }
      end

      should 'show links for related posts' do
        assert_select 'a', :text => @post.title
      end
    end

    context 'without posts' do
      setup do
        category = Factory(:design_category)
        category.stubs(:posts).returns([])
        get :show, :id => category.to_param
      end

      should_respond_with :success

      should 'show message to user' do
        assert_select 'h4', :text => /No existen posts/
      end
    end
  end
end
