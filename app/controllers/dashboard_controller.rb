class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index

  end

  def help

  end

  def api
    if params[:category_ids]
      @categories = params[:category_ids]
    end
  end
end
