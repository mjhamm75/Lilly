class ScoutAdvancement < ActiveRecord::Base
  belongs_to :scout
  belongs_to :advancement
end
