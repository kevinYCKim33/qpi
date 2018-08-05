class UsersController < ApplicationController

  def home
    # binding.pry
    # @title = 'Home'
    redirect_to root_path if !user_signed_in?
  end

  def edit
    # binding.pry
    if current_user.id != params[:id].to_i
      redirect_back(fallback_location: personal_home_path)
    end
    # @title = 'Edit Profile'
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to personal_home_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :occupation, :school, :grade, :location)
  end


end
