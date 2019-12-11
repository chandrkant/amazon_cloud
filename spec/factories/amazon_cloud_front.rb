FactoryBot.define do
  factory :amazon_cloud_front do
    sku { Faker::Lorem.word }
    rate_code { Faker::Lorem.word }
    description { Faker::Lorem.word }
    begin_range { Faker::Number.number(digits: 3) }
    end_range { Faker::Number.number(digits: 4) }
    unit { Faker::Lorem.word }
    price_per_unit { Faker::Number.number(digits: 4) }
    effective_date { Faker::Number.number(digits: 4) }
    region 'us-east-1'
  end
end
