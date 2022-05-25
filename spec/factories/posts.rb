# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    sequence(:date) { |n| n.days.from_now }
    start_time { '10:00' }
    end_time { '19:00' }
    kind_of_climbing { 0 }
    association :owner

    trait :created_yesterday do
      date { 1.day.ago }
    end

    trait :created_3_days_ago do
      date { 3.days.ago }
    end

    trait :created_4_days_ago do
      date { 4.days.ago }
    end

    trait :created_5_days_ago do
      date { 5.days.ago }
    end
  end
end
