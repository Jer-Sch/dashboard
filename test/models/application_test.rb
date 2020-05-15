require 'test_helper'

class ApplicationTest < ActiveSupport::TestCase
  application1 = Application.create(name: "Google",
                                    description: "Search Engine",
                                    color: "Red",
                                    default_status: 'yes',
                                    link: "http://www.google.com")

  test "applications have a name" do
    assert application1.name == "Google"
  end

  test "applications have a description" do
    assert application1.description == "Search Engine"
  end

  test "applications have a color" do
    assert application1.color == "Red"
  end

  test "applications have a default status" do
    assert application1.default_status == true
  end

  test "applications have a link" do
    assert application1.link == "http://www.google.com"
  end

  application1.delete
end 
