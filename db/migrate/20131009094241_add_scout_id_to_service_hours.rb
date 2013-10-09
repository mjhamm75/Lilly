class AddScoutIdToServiceHours < ActiveRecord::Migration
  def change
    add_column :service_hours, :scout_id, :integer
  end
end
