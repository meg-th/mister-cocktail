class CocktailsController < ApplicationController
  def create
    @cocktail = Cocktail.new(cocktail_params)
      if @cocktail.save
        redirect_to recipe_amounts(@cocktail)
      else
        render :new
      end
  end

  def new
    @cocktail = Cocktail.new
  end

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :description)
  end
end
