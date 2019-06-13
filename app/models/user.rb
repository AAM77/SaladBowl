class User < ApplicationRecord
  belongs_to :location
  has_one :preference
  has_many :user_bowls
  has_many :salad_bowls, through: :user_bowls

end
