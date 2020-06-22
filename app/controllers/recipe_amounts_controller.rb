class RecipeAmountsController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @recipe_amount = RecipeAmount.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @recipe_amount = RecipeAmount.new(recipe_amount_params)
    @recipe_amount.cocktail = @cocktail
    if @recipe_amount.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def recipe_amount_params
    params.require(:recipe_amount).permit(:amount, :description, :ingredient_id)
  end
end
