class ExerciseTypesController < ApplicationController
  before_action :set_exercise_type, only: [:show, :edit, :update, :destroy]

  def index
    @exercise_types = ExerciseType.all
  end

  def new
    @exercise_type = ExerciseType.new
  end

  def edit
  end

  def show
  end

  def create
    @exercise_type = ExerciseType.new(exercise_type_params)

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

  def destroy
    @exercise_type.destroy
    respond_to do |format|
      format.html { redirect_to exercise_types_url, notice: 'Step count was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def exercise_type_params
      params.require(:exercise_type).permit(:name)
    end

    def set_exercise_type
      @exercise_type = ExerciseType.find(params[:id])
    end
end
