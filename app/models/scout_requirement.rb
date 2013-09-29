class ScoutRequirement < ActiveRecord::Base
  belongs_to :scout
  belongs_to :requirement

  def isComplete?
    !self.completed_date.blank?
  end
end
