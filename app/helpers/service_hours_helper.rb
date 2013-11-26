module ServiceHoursHelper
  def update_service_hours(scout)
    totalTimeServedInMinutes = scout.service_hours.sum('minutes')
    ranks = scout.advancements.ranks
    ranks.each do |rank|
      totalTimeServedInMinutes = update_rank_service_hours(scout, rank, totalTimeServedInMinutes)
    end
  end

  def update_rank_service_hours(scout, rank, totalTimeServedInMinutes)
    minutesNeededForRankRequirement = rank.advancement_requirements.where('service_minutes is not null')
    minutesNeededForRankRequirement.each do |mn|
      req = scout.scout_requirements.where(:requirement_id => mn.requirement_id).first
      if(req.completed_date === nil)
        puts "None"
      else
        puts "FULL"
      end
    end
    totalTimeServedInMinutes
  end
end