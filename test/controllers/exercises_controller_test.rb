require 'test_helper'

class ExercisesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get post" do
    post :post
    assert_response :success
  end

end
