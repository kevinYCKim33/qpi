class WorkshopsController < ApplicationController
  def index
    @title = "Workshops"
    @workshops = Workshop.all.order(:start_date)
  end

  private

  # def workshop_params
  #   # binding.pry
  #   params.require(:workshop).permit(:title, :location, :link, :date, :description, :community_id)
  # end
end
