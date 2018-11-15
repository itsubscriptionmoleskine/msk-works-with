FactoryBot.define do
  sequence :developer_name do |n|
    Faker::Name.name + n.to_s
  end
  factory :developer do
    name {:developer_name}
    description {Faker::Lorem.sentence}
    url {Faker::Internet.url}
    is_live {true}
    trait :wip do
      is_live {false}
    end
  end
end