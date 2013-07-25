class AddColumnsToAdvancementRequirements < ActiveRecord::Migration
  def change
    add_column :advancement_requirements, :completed, :boolean
    add_column :advancement_requirements, :parent_initials, :string
    add_column :advancement_requirements, :leader_initials, :string
    add_column :advancement_requirements, :date_completed, :date
  end
end
