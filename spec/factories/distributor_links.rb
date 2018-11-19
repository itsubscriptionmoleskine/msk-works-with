FactoryBot.define do
  factory :distributor_link do
    link {Faker::Internet.url}
    is_live {true}
    distributor
    app
    trait :wip do
      is_live {false}
    end
  end
end
