require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "a user can log in" do
    user1 = User.create(login: "user1", password: "password")

    post :create, params: { session: { login: "user1", password: "password" } }
    
    assert session[:user_id] == user1.id
  end

  test "a user can log out" do
    user2 = User.create(login: "user2", password: "password")

    post :create, params: { session: { login: "user2", password: "password" } }
    
    assert session[:user_id] == user2.id

    delete :destroy, params: { session: { user_id: user2.id } }

    assert session[:user_id] == nil
  end
end
