class Notification < ActiveRecord::Base
  has_many :users
  has_many :worlds
end
