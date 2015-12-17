class AddDateTimeToConstructionRequests < ActiveRecord::Migration
  def change
    add_column :construction_requests, :start_time, :datetime
    add_column :construction_requests, :date_time, :datetime
    add_column :construction_requests, :construction_time_in_seconds, :integer
  end
end
