class UserBowl < ApplicationRecord
  belongs_to :user
  belongs_to :salad_bowl
end
