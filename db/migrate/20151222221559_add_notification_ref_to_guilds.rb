class AddNotificationRefToGuilds < ActiveRecord::Migration
  def change
    add_reference :guilds, :notification, index: true, foreign_key: true
  end
end
