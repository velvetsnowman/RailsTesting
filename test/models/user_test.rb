require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'a user should not be able to sign up without a username' do
    users(:one).username = nil
    assert_equal false, users(:one).valid?
  end

  test 'a user should not be able to sign up without a firstname' do
    users(:one).firstname = nil
    assert_equal false, users(:one).valid?
  end

  test 'a user should not be able to sign up without a middlename' do
    assert_equal true, users(:one).valid?
  end

  test 'a user should not be able to sign up without a lastname' do
    users(:one).lastname = nil
    assert_equal false, users(:one).valid?
  end

  test 'a user should not be able to sign up without an email address' do
    users(:one).email = nil
    assert_equal false, users(:one).valid?
  end

  test 'a user should not be able to sign up without a age' do
    users(:one).age = nil
    assert_equal false, users(:one).valid?
  end

  test 'a user should not be able to sign up without a password' do
    users(:one).password = nil
    assert_equal false, users(:one).valid?
  end

end
