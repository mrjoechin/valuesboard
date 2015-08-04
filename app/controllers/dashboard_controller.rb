class DashboardController < ApplicationController
  def index
  	@values = Value.includes(:stories)
    @stories = Story.all
  end

  def details
    @value = Value.find(params[:id])
  end
end
