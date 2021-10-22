class CreateGpsPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :gps_points do |t|
      t.float :latitude
      t.float :longitude
      t.datetime :sent_at
      t.string :vehicle_identifier

      t.timestamps
    end
  end
end
