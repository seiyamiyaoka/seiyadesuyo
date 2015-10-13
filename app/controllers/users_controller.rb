class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def edit
  end
  
  def update
    current_user.update(update_params)
  end
  
  private
  
  def id_params
    params.permit(:id)
end
  
  def updadate_params
    params_require(:user).permit(:name,:profile)
  end
end
