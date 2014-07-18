require 'securerandom'

FactoryGirl.define do
  factory :notification do
    secret { SecureRandom.uuid }
    created_at { Time.now }
    tracker
  end
end
