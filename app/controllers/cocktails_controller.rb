class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(set_params)
    if @cocktail.save
      redirect_to cocktails_path(@cocktail)
    else
      render :new
    end
  end

  private

  def set_params
    params.require(:cocktail).permit(:name, :photo)
  end

end
