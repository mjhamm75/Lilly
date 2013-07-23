class AdvancementRequirement < ActiveRecord::Base
  belongs_to :merit_badge
  belongs_to :rank
  belongs_to :requirement
end
