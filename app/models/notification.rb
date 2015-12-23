class Notification < ActiveRecord::Base
  has_many :users, dependent: :destroy
  has_many :guilds, dependent: :destroy
end
