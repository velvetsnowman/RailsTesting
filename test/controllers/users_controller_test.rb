require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  test 'a user should get the users#new route' do
    get '/users/new'
    assert_response :success
  end
  
end
