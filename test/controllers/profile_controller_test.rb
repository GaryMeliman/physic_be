require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  test "should get pharmacy" do
    get :pharmacy
    assert_response :success
  end

  test "should get user" do
    get :user
    assert_response :success
  end

end
