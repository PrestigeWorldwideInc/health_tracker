class CholoricIntakesController < ApplicationController
  before_action :set_choloric_intake, only: [:show, :edit, :update, :destroy]
  def index
    @choloric_intake = CholoricIntake.all
  end

  def new
    @choloric_intake = CholoricIntake.new
  end

  def create
    @choloric_intake = Choloric_intake.new(choloric_intake_params)

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

  # PATCH/PUT /choloric_intakes/1
  # PATCH/PUT /choloric_intakes/1.json
  def update
    respond_to do |format|
      if @choloric_intake.update(choloric_intake_params)
        format.html { redirect_to @choloric_intake, notice: 'Choloric intake was successfully updated.' }
        format.json { render :show, status: :ok, location: @choloric_intake }
      else
        format.html { render :edit }
        format.json { render json: @choloric_intake.errors, status: :unprocessable_entity }
      end
    end
  end



  private
    def choloric_intake
      params.require(:choloric_intake).permit(:calories, :date)
    end

    def set_choloric_intake
      @choloric_intake = CholoricIntake.find(params[:id])
    end
end
