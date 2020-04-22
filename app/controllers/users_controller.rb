class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @recipes = @user.recipes
    
  
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
      @user = User.find(params[:id])
          if @user.update(user_params)
            redirect_to user_path(@user.id)
          else
            redirect_to edit_user_path(@user.id)
          end
          
       
  end
  
   
    private
    def user_params
      params.require(:user).permit(:user_name,:user_kana_name,:email,:password,:password_confirmation)
    end
end
