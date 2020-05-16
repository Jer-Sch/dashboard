require 'test_helper'

class ApplicationTest < ActiveSupport::TestCase
  application1 = Application.create(name: "Google",
                                    description: "Search Engine",
                                    color: "Red",
                                    default_status: true,
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

  test "applications are invalid without a name" do
    application2 = Application.create(name: nil,
                                      description: "Search Engine",
                                      color: "Red",
                                      default_status: false,
                                      link: "http://www.google.com")

    assert application2.invalid?
  end

  test "applications are invalid without a description" do
    application3 = Application.create(name: "Google",
                                      description: nil,
                                      color: "Red",
                                      default_status: false,
                                      link: "http://www.google.com")

    assert application3.invalid?
  end

  test "applications are invalid without a color" do
    application4 = Application.create(name: "Google",
                                      description: "Search Engine",
                                      color: nil,
                                      default_status: false,
                                      link: "http://www.google.com")

    assert application4.invalid?
  end

  test "applications are invalid without a default status" do
    application5 = Application.create(name: "Google",
                                      description: "Search Engine",
                                      color: "Red",
                                      default_status: nil,
                                      link: "http://www.google.com")

    assert application5.invalid?
  end

  test "applications are invalid without a link" do
    application6 = Application.create(name: "Google",
                                      description: "Search Engine",
                                      color: "Red",
                                      default_status: false,
                                      link: nil)

    assert application6.invalid?
  end
end 
