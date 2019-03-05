FactoryBot.define do
  factory :warranty do
    name { "Fender Telecaster" }
    expires_on { 5.years.from_now }

    trait :random do
      transient do
        from { 2.years.ago }
        to { 6.years.from_now }
      end

      name { Faker::Commerce.product_name }
      expires_on { Time.at(from + rand * (to.to_f - from.to_f)) }
    end
  end
end
