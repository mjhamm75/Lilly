module ServiceHoursHelper
  def update_service_hours(scout)
    totalTimeServedInMinutes = scout.service_hours.sum('minutes')
    ranks = scout.advancements.ranks
    ranks.each do |rank|
      totalTimeServedInMinutes = update_rank_service_hours(scout, rank, totalTimeServedInMinutes)
    end
  end

  def update_rank_service_hours(scout, rank, totalTimeServedInMinutes)
    reqsForService = rank.advancement_requirements.where('service_minutes is not null')
    if(reqsForService.length > 0)
      reqForService = reqsForService.first
      reqId = reqForService.requirement_id
      sr = scout.scout_requirements.where(:requirement_id => reqId).first
      if(sr.completed_date == nil)
        if(totalTimeServedInMinutes > reqForService.service_minutes)
          sr.update_attributes(:completed_date => Date.today)
          totalTimeServedInMinutes = totalTimeServedInMinutes - reqForService.service_minutes
        end
      else
        totalTimeServedInMinutes = totalTimeServedInMinutes > reqForService.service_minutes  ? totalTimeServedInMinutes - reqForService.service_minutes : 0
      end
    end
    totalTimeServedInMinutes
  end

  def test
    "Jason"
  end
end