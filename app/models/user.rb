class User < ActiveRecord::Base
  has_many :worlds
  has_many :guilds
  has_many :notifications
  has_many :titles
  has_many :iaps
end
