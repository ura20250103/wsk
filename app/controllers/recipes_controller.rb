class RecipesController < ApplicationController
  def index
    @recipe = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
      if @recipe.save
        @recipe = Recipe.all
        redirect_to recipes_path
      else
        redirect_to new_recipe_path
      end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title,:material,:process,:category_id,:user_id)
  end
end
