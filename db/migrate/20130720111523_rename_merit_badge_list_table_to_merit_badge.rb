class RenameMeritBadgeListTableToMeritBadge < ActiveRecord::Migration
  def change
    rename_table :merit_badge_lists, :merit_badges
  end
end
