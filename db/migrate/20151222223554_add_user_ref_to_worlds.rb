class AddUserRefToWorlds < ActiveRecord::Migration
  def change
    add_reference :worlds, :user, index: true, foreign_key: true
  end
end
