class World < ActiveRecord::Base
  has_and_belongs_to_many :users, dependent: :destroy
  has_many :guilds, dependent: :destroy
  has_many :villages, dependent: :destroy
end
