class AddDefaultValueToCompletedAttribute < ActiveRecord::Migration
  def change
    change_column :advancement_requirements, :completed, :boolean, :default => false
  end
end
