FactoryBot.define do
  factory :post do
    sequence(:date) { |n| n.days.from_now }
    start_time { "10:00" }
    end_time { "19:00" }
    kind_of_climbing { 0 }
    association :owner
  end
end
