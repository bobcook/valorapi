class Building < ActiveRecord::Base
  belongs_to :village, dependent: :destroy
end
