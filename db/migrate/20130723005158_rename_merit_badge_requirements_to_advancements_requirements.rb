class RenameMeritBadgeRequirementsToAdvancementsRequirements < ActiveRecord::Migration
  def change
    rename_table :merit_badge_requirements, :advancement_requirements
  end
end
