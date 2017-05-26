require 'test-helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get statis_pages_home url
    assert_response :success
    assert_select "title", "Home | Ruby on Rails Tutorial App"
  end

  test "should get help" do
    get statis_pages_help url
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial App"
  end

  test "should get about" do
    get statis_pages_about url
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial App"
  end

  test "should get contact" do
    get statis_pages_contact url
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial App"
  end

end
