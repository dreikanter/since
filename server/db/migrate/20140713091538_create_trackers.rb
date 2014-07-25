class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      # Tracker name
      t.string :name, null: false

      # Extended description
      t.string :description, null: false

      # Tracker activity switch
      t.boolean :enabled, null: false, default: true

      # Unique ID to use id hook URLs
      t.string :secret, null: false

      # Scheduling configuration in cron format
      t.string :cron

      # Last execution time
      t.datetime :last_time

      # Last notification time
      t.datetime :last_notified

      t.timestamps

      # Tracker is the User property
      t.references :user, null: false
    end
  end
end
