class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :secret, null: false
      t.boolean :enabled, null: false, default: true
      t.integer :period, null: false
      t.datetime :period_start, null: false
      t.datetime :last_notified, null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end
