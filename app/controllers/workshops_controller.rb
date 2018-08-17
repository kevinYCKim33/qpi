class WorkshopsController < ApplicationController
  def index
    @title = "Workshops"
    @workshops = Workshop.all.order(:start_date)
  end

  # workshops get created via ActiveAdmin

end
