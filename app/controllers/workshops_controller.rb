class WorkshopsController < ApplicationController
  def index
    @title = "Workshops"
    @workshops = Workshop.all
  end

  private

  # def workshop_params
  #   # binding.pry
  #   params.require(:workshop).permit(:title, :location, :link, :date, :description, :community_id)
  # end
end
