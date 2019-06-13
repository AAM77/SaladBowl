class SaladBar < ApplicationRecord
  has_many :salad_bar_locations
  has_many :locations, through: :salad_bar_locations
end
