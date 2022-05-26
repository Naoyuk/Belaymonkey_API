FactoryBot.define do
  factory :room do
    host_user_id { 1 }
    guest_user_id { 1 }
    post { nil }
  end
end
