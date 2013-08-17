class AddInternalIdToRequirements < ActiveRecord::Migration
  def change
    add_column :requirements, :internal_id, :integer
  end
end
