class CommunitiesController < ApplicationController
  before_action :require_login

  # 'explore-communities'
  def index
    @title = 'Explore Communities'
    @communities = Community.all
  end

  # 'my-communities'
  def my_communities
    @title = 'My Communities'
    @communities = current_user.communities
  end

  def show
    @community = Community.find(params[:id])
    @title = @community.title
    # problem child...might as well just do a slip via active record, bypass posting
    @community_user = CommunityUser.find_by(user_id: current_user.id, community_id: @community.id)
    if @community_user == nil
      flash[:message] = "You have not joined that community yet!"
      redirect_to communities_path
    end
  end

  private

  def require_login
    flash[:message] = 'You must login to access community features'
    redirect_to new_user_session_path if !user_signed_in?
  end
end
