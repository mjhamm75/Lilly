class AddEagleRequiredToMeritBadgeList < ActiveRecord::Migration
  def change
    add_column :merit_badge_lists, :eagle_required, :boolean, :default => false 
  end
end
