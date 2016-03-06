require 'test_helper'

class ExercisesControllerTest < ActionController::TestCase
  setup do
    @exercise = exercises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise" do
    assert_difference('Exercise.count') do
      post :create, exercise: {calories_burned_per_minute: @exercise.calories_burned_per_minute, duration: @exercise.duration}
    end

    assert_redirected_to exercise_path(assigns(:exercise))
  end

  test "should update exercise" do
    patch :update, id: @exercise, exercise: {calories_burned_per_minute: @exercise.calories_burned_per_minute, duration: @exercise.duration}

    assert_redirected_to exercise_path(assigns(:exercise))
  end

  test "should destroy exercise" do
    assert_difference('Exercise.count', -1) do
      delete :destroy, id: @exercise
    end

    assert_redirected_to exercises_path
  end
end
