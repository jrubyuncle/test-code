require 'test_helper'

class AaaControllerTest < ActionController::TestCase
  test "should get bbb" do
    get :bbb
    assert_response :success
  end

  test "should get ccc" do
    get :ccc
    assert_response :success
  end

end
