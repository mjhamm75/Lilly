class MeritBadgesController < ApplicationController

  def index
    @badges = MeritBadgeList.all
  end
  
  def new
    @scout = Scout.find(params[:id])
    @scout.merit_badges.create!(:name => params[:badge])
    mb = MeritBadgeList.find_by_name(params[:badge])
    respond_to do |format|
      format.json { render json: mb, :status => :ok}
    end
  end
end