class ConstructionRequest < ActiveRecord::Base
  belongs_to :village, dependent: :destroy
end
