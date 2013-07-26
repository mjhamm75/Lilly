class RemoveColumnsFromAdvancementRequirements < ActiveRecord::Migration
  def change
    remove_column :advancement_requirements, :merit_badge_id
    remove_column :advancement_requirements, :rank_id
    remove_column :advancement_requirements, :parent_initials
    remove_column :advancement_requirements, :leader_initials
    remove_column :advancement_requirements, :completed
  end
end
