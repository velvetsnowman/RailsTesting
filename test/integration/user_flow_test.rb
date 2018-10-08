require 'test_helper'

class UserFlowTest < ActionDispatch::IntegrationTest

  test 'a client can sign up' do
    get '/users/new'
    assert_response :success

    post "/users",
      params: { user: {
        username: 'danielson',
        firstname: "Daniel",
        middlename: "jacob",
        lastname: "den hartog",
        email: "email@email.com",
        password: "mypa$$",
        age: 45 } }

      assert_response :redirect
      follow_redirect!
      assert_response :success
  end

end
