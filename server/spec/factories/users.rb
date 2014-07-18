# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    created_at { Time.now }
    updated_at { Time.now }
  end

  trait :bad_email do
    email { Faker::Lorem.words }
  end

  trait :no_email do
    email { nil }
  end
end
