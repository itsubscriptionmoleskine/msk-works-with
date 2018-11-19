FactoryBot.define do
  factory :example_image do
    image_url {Faker::Internet.url}
    caption {Faker::Lorem.sentence}
    is_live {true}
    works_with
    trait :wip do
      is_live {false}
    end
  end
end
