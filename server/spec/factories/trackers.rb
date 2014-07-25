require 'securerandom'

FactoryGirl.define do
  factory :tracker do
    name { Faker::Lorem.words.join(' ') }
    description { Faker::Lorem.sentence }
    secret { SecureRandom.uuid }
    enabled { true }
    last_notified { Time.now }
    created_at { Time.now }
    updated_at { Time.now }
    user
  end

  trait :bad_secret do
    secret { Faker::Lorem.words.join(' ') }
  end
end
