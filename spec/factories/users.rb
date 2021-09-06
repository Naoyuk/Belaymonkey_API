FactoryBot.define do
  factory :user do
    email { "test01@example.com" }
    password { "password" }
    password_confirmation { "password" }
    name { "test01" }
    gender { 0 }
    climbing_area { "Squamish" }
    grade { "5.12" }
    kind_of_climbing { 0 }
    description { "test text" }
  end
end
