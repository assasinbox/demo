require 'test_helper'

class VadikControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get gogo" do
    get :gogo
    assert_response :success
  end

  test "should get puk" do
    get :puk
    assert_response :success
  end

end
