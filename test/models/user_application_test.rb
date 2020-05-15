require 'test_helper'

class UserApplicationTest < ActiveSupport::TestCase
  user1 = User.create(login: "user1", password: "password")
  
  test "user can have many applications" do
    application1 = user1.applications.create(name: "Google",
                                             description: "Search Engine",
                                             color: "Red",
                                             default_status: true,
                                             link: "http://www.google.com")

    assert user1.applications.last.name == "Google"
  end

  user1.applications.delete
end
