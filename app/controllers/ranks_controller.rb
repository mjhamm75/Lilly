class RanksController < ApplicationController
  def edit
    @scout = set_scout
    @rank = set_rank
  end

  def set_rank
    @scout = set_scout
    @rank = @scout.ranks.find_by_id(params[:id])
  end

  def set_scout
    @scout = Scout.find(params[:scout_id])
  end
end