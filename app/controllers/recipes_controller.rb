class RecipesController < ApplicationController
  def index
    @recipe = Recipe.new 
    @recipes = Recipe.all
  
  end

  def new
    @recipe = Recipe.new
    
    @categories = Category.all
 
    
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
    @category = @recipe.category
   
  end


  def destroy
  	@recipe = Recipe.find(params[:id])
  	@recipe.destroy
  	redirect_to recipes_path, notice: "successfully delete book!"
  end

  private
    def recipe_params
      params.require(:recipe).permit(:title,:material,:process,:category_id)
    end
  

end

