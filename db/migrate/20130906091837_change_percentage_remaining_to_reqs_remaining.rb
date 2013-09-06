class ChangePercentageRemainingToReqsRemaining < ActiveRecord::Migration
  def change
    rename_column :scout_advancements, :percentage_complete, :reqs_remaining
  end
end
