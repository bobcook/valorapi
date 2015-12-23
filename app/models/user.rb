class User < ActiveRecord::Base
  has_and_belongs_to_many :worlds
  has_many :notifications, dependent: :destroy
  has_many :titles, dependent: :destroy
  has_many :iaps, dependent: :destroy
end
