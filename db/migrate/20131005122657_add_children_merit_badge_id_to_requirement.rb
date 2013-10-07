class AddChildrenMeritBadgeIdToRequirement < ActiveRecord::Migration
  def change
    add_column :requirements, :children_merit_badge_count, :integer, :default => 0
  end
end
