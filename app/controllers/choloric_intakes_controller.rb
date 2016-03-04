class CholoricIntakesController < ApplicationController
  def index
  end

  def post
  end

  private
    def choloric_intake
      params.require(:choloric_intake).permit(:calories, :date)
end
