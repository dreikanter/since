class Tracker < ActiveRecord::Base
  validates :name, presence: true
  validates_format_of :secret, with: /\A[a-z\d_-]{1,100}$\z/i
  # Validate :cron is a valid cron string
  belongs_to :user
  has_many :notifications, dependent: :destroy
end
