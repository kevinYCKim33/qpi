class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end

  def show
    # if the current_user is not in the community
    # join it first
    # then take them there
    @community = Community.find(params[:id])
    if current_user.member?(@community) == false
      current_user.join_community(@community)
    end
  end
end
