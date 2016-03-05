require 'test_helper'

class ExerciseControllerTest < ActionController::TestCase
  setup do
    @exercise = step_counts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:step_counts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create step_count" do
    assert_difference('StepCount.count') do
      post :create, step_count: { date: @exercise.date, steps_taken: @exercise.steps_taken }
    end

    assert_redirected_to step_count_path(assigns(:step_count))
  end

  test "should show step_count" do
    get :show, id: @exercise
  end

  test "should get edit" do
    get :edit, id: @exercise
    assert_response :success
  end

  test "should update step_count" do
    patch :update, id: @exercise, step_count: { date: @exercise.date, steps_taken: @exercise.steps_taken }
    assert_redirected_to step_count_path(assigns(:step_count))
  end

  test "should destroy step_count" do
    assert_difference('StepCount.count', -1) do
      delete :destroy, id: @exercise
    end

    assert_redirected_to step_counts_path
  end
end
