class AdvancementRequirement < ActiveRecord::Base
  belongs_to :advancement
  belongs_to :requirement

  def completed?
    if(self.reqs_needed == self.reqs_count)
      true
    else
      false
    end
  end

  def completed_req?
    if date_completed != nil
      true
    else
      false
    end
  end
end
