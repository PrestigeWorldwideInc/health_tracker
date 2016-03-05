require 'test_helper'

class CholoricIntakesControllerTest < ActionController::TestCase
  setup do
    @choloric_intake = choloric_intakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create choloric_intake" do
    assert_difference('CholoricIntake.count') do
      post :create, choloric_intake: { date: @choloric_intake.date, calories: @choloric_intake.calories }
    end

    assert_redirected_to choloric_intake_path(assigns(:choloric_intake))
  end

end
