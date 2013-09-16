class AdvancementsController < ApplicationController
  def edit
    @scout = set_scout
    @advancement = set_advancement
  end

  def destroy
    @scout = set_scout
    @mb = MeritBadge.find_by_id(params[:id])
    @requirements = MeritBadge.find_by_id(params[:id]).requirements
    @scout.advancements.delete(@mb)
    @scout.requirements.delete(@requirements)
    respond_to do |format|
      format.html { redirect_to edit_scout_path(Scout.find_by_id(params[:scout_id])) }
      format.json { head :no_content }
    end
  end

  def set_advancement
    @scout = set_scout
    @advancement = @scout.advancements.find_by_id(params[:id])
  end

  def set_scout
    @scout = Scout.find(params[:scout_id])
  end
end

