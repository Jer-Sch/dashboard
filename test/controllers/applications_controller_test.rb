require 'test_helper'

class ApplicationsControllerTest < ActionController::TestCase
    test "does not add same application to home page twice" do
        user1 = User.create(login: "user1", password: "password")
        application1 = Application.create(name: "Google",
                                          description: "Search Engine",
                                          color: "Red",
                                          default_status: true,
                                          link: "http://www.google.com")

        user1.applications << application1
        
        assert_raise do
            user1.applications << application1
        end
    end
end

