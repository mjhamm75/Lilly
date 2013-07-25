class AdvancementRequirement < ActiveRecord::Base
  belongs_to :advancement
  belongs_to :requirement
end
