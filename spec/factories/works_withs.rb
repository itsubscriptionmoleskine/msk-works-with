FactoryBot.define do
  sequence :works_with_title do |n|
    Faker::Name.name + n.to_s
  end
  factory :works_with do
    title {:works_with_title}
    description {Faker::Lorem.sentence}
    is_live {true}
    offering
    app
    trait :wip do
      is_live {false}
    end
  end
end