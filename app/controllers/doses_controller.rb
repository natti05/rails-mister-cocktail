class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(set_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktails_path(@cocktails)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    if @dose.destroy
      redirect_to cocktail_path(@cocktail)
    end
  end

  private

  def set_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
