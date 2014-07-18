class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.references :tracker, null: false
      t.string :secret, null: false
      t.datetime :created_at, null: false
    end
  end
end
