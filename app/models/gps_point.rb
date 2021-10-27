class GpsPoint < ApplicationRecord
  attribute :sent_at, :string, default: Time.now.strftime("%Y-%m-%d %k:%M:%S")
  validates: :vehicle_identifier, presence: true,
  validates: :latitude, presence: true,
  validates: :longitude, presence: true
end
