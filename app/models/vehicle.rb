class Vehicle < ApplicationRecord
  has_many :gps_points, dependent: :destroy
  validates: :vehicle_identifier, presence: true
end
