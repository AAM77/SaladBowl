class Location < ApplicationRecord
  has_many :users
  has_many :salad_bar_locations
  has_many :salad_bars, through: :salad_bar_locations
end
