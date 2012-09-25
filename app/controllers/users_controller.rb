class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
   @user = User.find(params[:id])
  end
  def destroy
    user = User.find(params[:id])
    if user.destroy
      flash[:notice] = "User destroyed successfully"
      redirect_to root_path
    else
      flash[:alert] = "Didn't destroy user!!!"
    end
  end

end
    