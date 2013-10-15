class AddCompletedDateToScoutAdvancements < ActiveRecord::Migration
  def change
    add_column :scout_advancements, :completed_date, :date
  end
end
