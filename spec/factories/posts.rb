FactoryBot.define do
  factory :post do
    user { nil }
    date { "2021-09-04" }
    start_time { "2021-09-04 09:42:50" }
    end_time { "2021-09-04 09:42:50" }
    kind_of_climbing { "MyString" }
  end
end
