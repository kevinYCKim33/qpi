class WorkshopsController < ApplicationController
  def index
    @title = "Workshops"
    @workshops = Workshop.all
  end
end
