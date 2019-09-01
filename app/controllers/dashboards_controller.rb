class DashboardsController < ApplicationController
  def index
    render json: { success: true }
  end
end
