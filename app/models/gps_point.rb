class GpsPoint < ApplicationRecord
  attribute :sent_at, :string, default: Time.now.strftime("%Y-%m-%d %k:%M:%S")
end
