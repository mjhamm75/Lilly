class AddOrdToAdvacementRequirements < ActiveRecord::Migration
  def change
    add_column :advancement_requirements, :ord, :integer
  end
end
