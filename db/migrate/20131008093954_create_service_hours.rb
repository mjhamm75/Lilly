class CreateServiceHours < ActiveRecord::Migration
  def change
    create_table :service_hours do |t|
      t.string :title
      t.string :place
      t.integer :minutes
      t.date :date_of_service

      t.timestamps
    end
  end
end
