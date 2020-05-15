require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "a user can log in" do
    user1 = User.create(login: "user1", password: "password")

    post :create, params: { session: { login: "user1", password: "password" } }
    
    assert session[:user_id] == user1.id
  end
end
