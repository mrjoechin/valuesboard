class DashboardController < ApplicationController
  layout 'dashboard'

  def index
    @values = Value.includes(:stories)
    @stories = Story.all
  end

  def details
    @value = Value.find(params[:id])
    add_breadcrumb @value.name, details_path(@value)
  end
end
