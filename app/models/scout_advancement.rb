class ScoutAdvancement < ActiveRecord::Base
  belongs_to :scout
  belongs_to :advancement

  def percentage_remaining
    100 - self.percentage_complete
  end
end
