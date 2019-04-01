FactoryBot.define do
  factory :example_image do
    image_url { 'https://www.domain.com/image.jpg' }
    caption {Faker::Lorem.sentence}
    is_live {true}
    works_with
    trait :wip do
      is_live {false}
    end
  end
end
