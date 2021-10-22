class RemoveSentAtFromGpsPoints < ActiveRecord::Migration[5.2]
  def change
    remove_column :gps_points, :sent_at, :datetime
  end
end
