class AdvancementRequirement < ActiveRecord::Base
  belongs_to :advancement
  belongs_to :requirement

  def isParent?
    !self.parent.blank?
  end

  def isChild?
    !self.children.blank?
  end

  def isSolo?
    !self.isParent? && !self.isChild?
  end
end
