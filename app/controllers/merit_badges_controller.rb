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

  def edit
    @scout = set_scout
    @badge = set_merit_badge
  end

  def destroy
    @scout = set_scout
    @badge = set_merit_badge
    @scout.merit_badges.delete(@badge)
    respond_to do |format|
      format.html { redirect_to edit_scout_path(Scout.find_by_id(params[:scout_id])) }
      format.json { head :no_content }
    end
  end

  def set_merit_badge
    @scout = set_scout
    @badge = @scout.merit_badges.find_by_id(params[:id])
  end

  def set_scout
    @scout = Scout.find(params[:scout_id])
  end
end