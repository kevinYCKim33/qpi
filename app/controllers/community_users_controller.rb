class CommunityUsersController < ApplicationController

  def create
    @community = Community.find(params[:community_id])
    CommunityUser.create(community_id: @community.id, user_id: current_user.id)
    redirect_to community_path(@community)
  end

  def destroy
    community_user = CommunityUser.find(params[:id])
    community_user.destroy
    redirect_to my_communities_path
  end

end
