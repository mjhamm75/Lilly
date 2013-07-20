class MeritBadgeRequirement < ActiveRecord::Base
	belongs_to :merit_badge
	belongs_to :requirement
end
