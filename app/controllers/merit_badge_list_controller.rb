class MeritBadgeListController < ApplicationController

  def index
    @badges = MeritBadgeList.all
    render :json => @badges
  end
end