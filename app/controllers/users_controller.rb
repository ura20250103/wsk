class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  
  end

  def edit
  end
  
    def update
       user = User.find(hogehoge_id)
       if user.update(user_params)
          redicrect_to hogehoge_path(hogehoge_id), notice: 'success!'
       else
         render :new
      end
   end
  
   
    private
    def user_params
      params.require(:user).permit(:user_name, :email,:password,:password_confirmation)
    end
end
