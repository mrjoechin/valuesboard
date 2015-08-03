class DashboardController < ApplicationController
  def index
  	@values = Value.includes(:stories)
  end
end
