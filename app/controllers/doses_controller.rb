class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  private

  def doses_params
    params.require(:dose).permit(:description)
  end
end
