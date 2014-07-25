class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :secret, null: false
      t.datetime :created_at, null: false
      t.references :tracker, null: false
    end
  end
end
