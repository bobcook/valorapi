class CreateJoinTableUserWorld < ActiveRecord::Migration
  def change
    create_join_table :users, :worlds do |t|
      # t.index [:user_id, :world_id]
      # t.index [:world_id, :user_id]
    end
  end
end
