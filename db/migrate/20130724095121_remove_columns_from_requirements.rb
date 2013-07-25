class RemoveColumnsFromRequirements < ActiveRecord::Migration
  def change
    remove_column :requirements, :completed, :date_finished
  end
end
