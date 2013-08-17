class AddLeaderInitialParentInitailCompletedDateToScoutRequirements < ActiveRecord::Migration
  def change
    add_column :scout_requirements, :leader_initial, :string
    add_column :scout_requirements, :parent_initial, :string
    add_column :scout_requirements, :completed_date, :date
  end
end
