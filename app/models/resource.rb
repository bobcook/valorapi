class Resource < ActiveRecord::Base
  belongs_to :village, dependent: :destroy
end
