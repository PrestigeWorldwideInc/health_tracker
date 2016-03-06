class CholoricIntakesController < ApplicationController
  before_action :set_choloric_intake, only: [:show, :edit, :update, :destroy]

  def index
    @choloric_intake = CholoricIntake.all
  end

  def new
    @choloric_intake = CholoricIntake.new
  end

  def edit
  end

  def show
  end

  def create
    @choloric_intake = CholoricIntake.new(choloric_intake_params)

    respond_to do |format|
      if @choloric_intake.save
        format.html { redirect_to @choloric_intake, notice: 'Choloric intake was successfully created.' }
        format.json { render :show, status: :created, location: @choloric_intake }
      else
        format.html { render :new }
        format.json { render json: @choloric_intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choloric_intakes/1
  # DELETE /choloric_intakes/1.json
  def destroy
    @choloric_intake.destroy
    respond_to do |format|
      format.html { redirect_to choloric_intakes_url, notice: 'Step count was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def choloric_intake_params
      params.require(:choloric_intake).permit(:calories, :date)
    end

    def set_choloric_intake
      @choloric_intake = CholoricIntake.find(params[:id])
    end
end
