require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'Should not save without a username' do
    user = User.new
    user.password = '$bdcjdsmnds'
    assert_not user.save
  end

  test 'should not save without a password' do
    user = User.new
    user.username = 'testuser'
    assert_not user.save
  end

  test 'should not save a user whos username are less than 3 characters' do
    user = User.new
    user.username = 'hg'
    user.password = '$fdvsdfsdds08'
    assert_not user.save
  end

  test 'should not save a user whos password are less than 6 characters' do
    user = User.new
    user.username = 'testuser'
    user.password = 'bad'
    assert_not user.save
  end

  test 'should save' do
    user = User.new
    user.username = 'testuser'
    user.password = '$hnbfvwsfcwds'
    assert user.save
  end

  test 'should get the user by username' do
    user = User.find_by_username('kalle')
    assert_not_nil user
    assert_equal('kalle', user.username)
  end

  test 'user should hav an api' do
    apikey = Apikey.new
    user = User.new

    user.apikey = apikey

    apikey.key = '$hgfgbvfvd'

    user.username = 'haoj'
    user.password = '$gthfvffgbf'

    assert user.save


  end
end
