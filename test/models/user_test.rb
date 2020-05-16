require 'test_helper'

class UserTest < ActiveSupport::TestCase
  user1 = User.create(login: "user1", password: "password")
  user2 = User.create(login: nil, password: "password")
  user3 = User.create(login: "user3", password: nil)

  test "users have a login" do
    assert user1.login == "user1"
  end

  test "users have a password" do
    assert user1.password == "password"
  end

  test "user is invalid without a login" do
    assert user2.invalid?
  end

  test "user is invalid without a password" do
    assert user3.invalid?
  end
end
