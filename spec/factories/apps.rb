FactoryBot.define do
  sequence :app_name do |n|
    Faker::Name.name + n.to_s
  end
  factory :app do
    name {:app_name}
    description {Faker::Lorem.sentence}
    info_url {Faker::Internet.url}
    is_live {true}
    trait :wip do
      is_live {false}
    end
  end
end