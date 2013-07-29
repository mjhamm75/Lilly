class ScoutRequirementsController < ApplicationController
  def edit
    s = Scout.find(params[:scout_id])
    req = s.scout_requirements.find_or_create_by_id(params[:id])
    respond_to do |format|
      # format.html { redirect_to scouts_path }
      format.json { head :no_content }
    end
  end
end