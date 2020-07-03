class TrainStorageInDatabase < ActiveRecord::Migration[6.0]
  def change
    create_table :lines do |table|
      table.string :mta_name
      table.string :friendly_name
    end

    create_table :transport_events do |table|
      table.references :station, foreign_key: true
      table.timestamp :arrival
      table.timestamp :departure
      table.timestamps
    end

    create_table :users do |table|
      table.string :name
      table.references :station
    end

    create_table :favorites do |table|
      table.references :user, foreign_key: true
      table.references :station, foreign_key: true
      table.timestamps
    end
  end
end
