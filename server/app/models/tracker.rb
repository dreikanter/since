class Tracker < ActiveRecord::Base
  validates :name, presence: true
  validates_format_of :secret, with: /\A[a-z\d_-]{1,100}$\z/i
  validates :period, inclusion: { in: 1..365*24 }
  belongs_to :user
  has_many :notifications, dependent: :destroy
end
