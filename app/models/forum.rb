class Forum < ActiveRecord::Base
  belongs_to :guild, dependent: :destroy
end
