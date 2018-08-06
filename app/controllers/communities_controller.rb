class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
    @community_user = CommunityUser.find_by(user_id: current_user.id, community_id: @community.id)
  end
end
