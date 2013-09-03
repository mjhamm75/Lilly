class AddPercentageCompleteToScoutAdvancements < ActiveRecord::Migration
  def change
    add_column :scout_advancements, :percentage_complete, :integer, :default => 0
  end
end
