class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def create
    @cocktail = Cocktail.new(cocktail_params)
      if @cocktail.save!
        redirect_to new_cocktail_recipe_amount_path(@cocktail)
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

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :description)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
