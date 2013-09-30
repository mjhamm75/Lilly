class AdvancementRequirement < ActiveRecord::Base
  belongs_to :advancement
  belongs_to :requirement

  def isParent?
    !self.children.blank?
  end

  def isChild?
    !self.parent.blank?
  end

  def isSolo?
    !self.isParent? && !self.isChild?
  end
end
