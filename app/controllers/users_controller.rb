class UsersController < ApplicationController
  before_action :require_login

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def edit
    # binding.pry
    if current_user.id != params[:id].to_i
      redirect_back(fallback_location: user_path(current_user))
    end
    # @title = 'Edit Profile'
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to user_path(current_user)
  end


  private

  def user_params
    params.require(:user).permit(:name, :occupation, :school, :grade, :location, :facebook, :pinterest, :twitter, :google, :profile_pic)
  end

  def require_login
    flash[:message] = 'You must login to access member profiles'
    redirect_to new_user_session_path if !user_signed_in?
  end

end
