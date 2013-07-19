class MeritBadgeListController < ApplicationController

  def index
    @badges = MeritBadgeList.all

  end
end