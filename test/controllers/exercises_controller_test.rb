require 'test_helper'

class ExerciseControllerTest < ActionController::TestCase
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
      post :create, exercise: {calroies_burned_per_minute: @exercise.calroies_burned_per_minute, duration: @exercise.duration, exercise_type: @exercise.exercise_type_id}
    end

    assert_redirected_to exercise_path(assigns(:exercise))
  end

  test "should show exercise" do
    get :show, id: @exercise
  end

  test "should get edit" do
    get :edit, id: @exercise
    assert_response :success
  end

  test "should update exercise" do
    patch :update, id: @exercise, exercise: {calroies_burned_per_minute: @exercise.calroies_burned_per_minute, duration: @exercise.duration, exercise_type: @exercise.exercise_type_id}
    assert_redirected_to exercise_path(assigns(:exercise))
  end

  test "should destroy exercise" do
    assert_difference('Exercise.count', -1) do
      delete :destroy, id: @exercise
    end

    assert_redirected_to exercises_path
  end
end
