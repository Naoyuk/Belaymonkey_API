FactoryBot.define do
  factory :user, aliases: [:owner] do
    sequence(:email) { |n| "test#{n}@example.com" }
    password { "password" }
    password_confirmation { "password" }
    sequence(:name) { |n| "test#{n}" }
    gender { 0 }
    climbing_area { "Squamish" }
    grade { "5.12" }
    kind_of_climbing { 0 }
    description { "test text" }
  end
end
