class ServiceHoursController < ApplicationController
  before_action :set_scout, only: [:create]

  def create
    mins = params[:mins].gsub(/\s+/m, ' ').strip.split(" ")[0]
    hours = params[:hours].gsub(/\s+/m, ' ').strip.split(" ")[0]
    mins_worked = mins.to_i + (hours.to_i * 60)
    sh = ServiceHour.create!(:title => params[:title], :place => params[:place], :minutes => mins_worked, :date_of_service => params[:date])
    @scout.service_hours << sh

    respond_to do |format|
      format.json {
        render :json => {} , :status => :ok
      }
    end
  end

  def set_scout
    @scout = Scout.find(params[:scout_id])
  end
end
