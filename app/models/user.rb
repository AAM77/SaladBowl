class User < ApplicationRecord
  has_secure_password
  belongs_to :location
  has_one :preference
  has_many :user_bowls, dependent: :destroy
  has_many :salad_bowls, through: :user_bowls
end
