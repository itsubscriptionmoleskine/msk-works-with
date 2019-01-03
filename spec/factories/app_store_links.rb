FactoryBot.define do
  factory :app_store_link do
    link {Faker::Internet.url}
    is_live {true}
    app_store
    app
    trait :wip do
      is_live {false}
    end
  end
end
