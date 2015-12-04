class Guild < ActiveRecord::Base
  has_many :users
  has_many :forums
  belongs_to :world
end
