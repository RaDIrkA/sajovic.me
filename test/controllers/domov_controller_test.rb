require 'test_helper'

class DomovControllerTest < ActionController::TestCase
  test "should get _admin" do
    get :_admin
    assert_response :success
  end

end
