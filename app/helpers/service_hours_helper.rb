module ServiceHoursHelper
  def update_service_hours(scout)
    totalTimeServedInMinutes = scout.service_hours.sum('minutes')
    advancements = scout.advancments.ranks
    puts totalTimeServedInMinutes
  end
end