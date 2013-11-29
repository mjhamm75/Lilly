class ServiceHoursController < ApplicationController
  include ServiceHoursHelper
  before_action :set_scout, only: [:create]

  def create
    mins = gsubTime(:mins)
    hours = gsubTime(:hours)
    mins_worked = mins.to_i + (hours.to_i * 60)
    sh = ServiceHour.create!(:title => params[:title], :place => params[:place], :minutes => mins_worked, :date_of_service => params[:date])
    @scout.service_hours << sh
    update_service_hours(@scout)

    respond_to do |format|
      format.json {
        render :json => {} , :status => :ok
      }
    end
  end

  def set_scout
    @scout = Scout.find(params[:scout_id])
  end

  def gsubTime(time)
    return params[time].gsub(/\s+/m, ' ').strip.split(" ")[0]
  end
end
