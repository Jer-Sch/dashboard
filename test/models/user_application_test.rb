require 'test_helper'

class UserApplicationTest < ActiveSupport::TestCase
  user1 = User.create(login: "user1", password: "password")
  
  test "user can have many applications" do
    application1 = user1.applications.create(name: "Google",
                                             description: "Search Engine",
                                             color: "Red",
                                             default_status: true,
                                             link: "http://www.google.com")

    application2 = user1.applications.create(name: "Wisc",
                                             description: "UW Homepage",
                                             color: "Blue",
                                             default_status: false,
                                             link: "http://www.wisc.edu")

    assert user1.applications.first.name == "Google"
    assert user1.applications.last.name == "Wisc"
  end
end
