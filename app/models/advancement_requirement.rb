class AdvancementRequirement < ActiveRecord::Base
  belongs_to :advancement
  belongs_to :requirement

  scope :order_asc , order('ord ASC')
end
