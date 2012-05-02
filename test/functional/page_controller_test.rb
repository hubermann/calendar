require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get calendar" do
    get :calendar
    assert_response :success
  end

  test "should get reservation" do
    get :reservation
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
