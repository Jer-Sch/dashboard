require 'test_helper'

class UserTest < ActiveSupport::TestCase
  user1 = User.create(login: "user1", password: "password")

  test "users have a login" do
    assert user1.login == "user1"
  end

  test "users have a password" do
    assert user1.password == "password"
  end

  user1.delete
end
