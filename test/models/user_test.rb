require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'valid user' do
    user = User.new(uid: 1, email: 'greg@greg.com')
    assert_not_nil user.valid?
  end

  test 'invalid without uid' do
    user = User.new(email: 'greg@greg.com')
    refute user.valid?, 'user is valid without a uid'
    assert_not_nil user.errors[:uid], 'no validation error for uid present'
  end

  test 'invalid without email' do
    user = User.new(uid: 1)
    refute user.valid?
    assert_not_nil user.errors[:email]
  end
end
