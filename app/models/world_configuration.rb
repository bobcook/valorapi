class WorldConfiguration < ActiveRecord::Base
  has_many :worlds, dependent: :destroy
end
