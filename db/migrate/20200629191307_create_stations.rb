class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :complex_id
      t.string :gtfs_stop_id
      t.string :division
      t.string :line
      t.string :stop_name
      t.string :borough
      t.string :daytime
      t.string :routes
      t.string :structure
      t.string :gtfs_lat
      t.string :gtfs_long
      t.string :north_d_label
      t.string :south_d_label

      t.timestamps
    end
  end
end
