class User < ActiveRecord::Base
  has_many :trackers, dependent: :destroy
  validates :name, presence: true
  validates :email, email: true
end
