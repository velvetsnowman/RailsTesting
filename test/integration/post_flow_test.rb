require 'test_helper'

class PostFlowTest < ActionDispatch::IntegrationTest

  test 'user sees the post#index as a homepage' do
    get '/'
    assert_select 'h1', "Posts#index"
  end

  test 'a user can create a post' do
    get '/posts/new'
    assert_response :success

    post '/posts', params: { post: {title: 'title', body: 'body'} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select 'h2', 'title'
  end

  test 'a user can see a form on post#new' do
    get '/posts/new'
    assert_response :success

    assert_select "form" do |elements|
      elements.each do |element|
        assert_select element, "input", 4
      end
    end
  end

end
