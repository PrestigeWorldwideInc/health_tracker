class ExerciseTypesController < ApplicationController
  def index
  end

  def post
    @exercise_types = Exercise_type.all
  end

  def create
    @exercise_type = Exercise_type.new(exercise_type_params)
    respond_to do |format|
      if @exercise_type.save
        format.html { redirect_to @exercise_type, notice: 'Exercise type was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_type }
      else
        format.html { render :new }
        format.json { render json: @exercise_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_types/1
  # PATCH/PUT /exercise_types/1.json
  def update
    respond_to do |format|
      if @exercise_type.update(exercise_type_params)
        format.html { redirect_to @exercise_type, notice: 'Exercise type was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_type }
      else
        format.html { render :edit }
        format.json { render json: @exercise_type.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def exercise_type
      params.require(:exercise_type).permit(:type)
    end

    def set_exercise_type
      @exercise_type = ExerciseType.find(params[:id])
    end
end
