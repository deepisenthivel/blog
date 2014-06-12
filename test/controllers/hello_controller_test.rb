require 'test_helper'

class HelloControllerTest < ActionController::TestCase
  test "should get hai" do
    get :hai
    assert_response :success
  end

end
