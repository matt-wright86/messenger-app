require "test_helper"

class FollowingControllerTest < ActionController::TestCase
  def test_create
    get :create
    assert_response :success
  end

  def test_delete
    get :delete
    assert_response :success
  end

end
