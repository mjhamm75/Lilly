module ServiceHoursHelper
  def update_service_hours(scout)
    totalTimeServedInMinutes = scout.service_hours.sum('minutes')
    puts totalTimeServedInMinutes
  end
end