class CreateConstructionRequests < ActiveRecord::Migration
  def change
    create_table :construction_requests do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :date_time
      t.integer :construction_time_in_seconds
      t.integer :building_current_level
      t.references :village, index: true, foreign_key: true

      t.timestamps
    end
  end
end
