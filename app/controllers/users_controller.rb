class UsersController < ApplicationController

  def edit
    # binding.pry
    if current_user.id != params[:id].to_i
      redirect_back(fallback_location: root_path)
    end
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
