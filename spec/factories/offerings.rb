FactoryBot.define do
  sequence :offering_name do |n|
    Faker::Name.name + n.to_s
  end
  factory :offering do
    name {:offering_name}
    description {Faker::Lorem.sentence}
    shop_link {Faker::Internet.url}
    is_live {true}
    trait :wip do
      is_live {false}
    end
  end
end