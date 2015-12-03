class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :title
      t.text :body
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
