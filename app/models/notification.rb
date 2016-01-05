class Notification < ActiveRecord::Base
  has_many :guilds, dependent: :destroy
end
