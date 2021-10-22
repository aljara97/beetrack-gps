class Vehicle < ApplicationRecord
  has_many :gps_points, dependent: :destroy
end
