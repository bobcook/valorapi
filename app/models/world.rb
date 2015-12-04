class World < ActiveRecord::Base
  has_many :users
  has_many :guilds
  has_many :directions
  has_many :villages
end
