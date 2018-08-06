class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end

  def my_communities
    @communities = current_user.communities
  end

  def show
    @community = Community.find(params[:id])
    @community_user = CommunityUser.find_by(user_id: current_user.id, community_id: @community.id)
    if @community_user == nil
      flash[:message] = "You have not joined that community yet!"
      redirect_to communities_path
    end
  end
end
