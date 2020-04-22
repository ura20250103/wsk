class RecipesController < ApplicationController
  def index
    @recipe = Recipe.new 
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
   
  end

  def create
      @recipe = Recipe.new(recipe_params)
      
      @recipe.user_id = current_user.id 
      @recipe.save
       redirect_to recipes_path
  end

  def show
    @recipe = Recipe.find(params[:id])
    @user = @recipe.user
   
  end

  private
    def recipe_params
      params.require(:recipe).permit(:title,:material,:process)
    end
  

end

