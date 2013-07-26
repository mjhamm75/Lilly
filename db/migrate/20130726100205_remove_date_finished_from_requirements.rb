class RemoveDateFinishedFromRequirements < ActiveRecord::Migration
  def change
    remove_column :requirements, :date_finished
  end
end
