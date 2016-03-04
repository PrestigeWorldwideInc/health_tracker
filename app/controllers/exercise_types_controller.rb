class ExerciseTypesController < ApplicationController
  def index
  end

  def post
  end
  private
    def exercise_type
      params.require(:exercise_type).permit(:type)
end
