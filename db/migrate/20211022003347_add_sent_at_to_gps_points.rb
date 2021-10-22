class AddSentAtToGpsPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :gps_points, :sent_at, :string
  end
end
