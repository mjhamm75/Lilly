class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :text
      t.boolean :completed
      t.date :date_finished

      t.timestamps
    end
  end
end
