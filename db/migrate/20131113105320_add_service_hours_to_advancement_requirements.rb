class AddServiceHoursToAdvancementRequirements < ActiveRecord::Migration
  def change
    add_column :advancement_requirements, :service_minutes, :integer
  end
end
