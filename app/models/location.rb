class Location < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :salad_bar_locations, dependent: :destroy
  has_many :salad_bars, through: :salad_bar_locations
end
