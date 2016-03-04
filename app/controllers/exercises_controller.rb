class ExercisesController < ApplicationController
  def index
  end

  def post
  end

  private
    def choloric_intake
      params.require(:exercise).permit(:calories_burned_per_minute, :exercise_type_id, :duration)
end
