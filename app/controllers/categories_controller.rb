class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    
    if params[:id].present?
      @recipes = Recipe.where(category_id:params[:id].to_i)
    else
      @recipes = Recipe.all
    end
  end

  def new
    @category = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
      if @category.save
        @category = Category.all
        redirect_to categories_path
      else
        redirect_to new_category_path
      end
    end

    private
    def category_params
      params.require(:category).permit(:name)
    end
end


