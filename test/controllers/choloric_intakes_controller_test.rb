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

  test "should show choloric_intake" do
    get :show, id: @choloric_intake
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @choloric_intake
    assert_response :success
  end

  test "should update choloric_intake" do
    patch :update, id: @choloric_intake, choloric_intake: { date: @choloric_intake.date, calories: @choloric_intake.calories }
    assert_redirected_to choloric_intake_path(assigns(:choloric_intake))
  end

  test "should destroy choloric_intake" do
    assert_difference('CholoricIntake.count', -1) do
      delete :destroy, id: @choloric_intake
    end

    assert_redirected_to choloric_intakes_path
  end

end
