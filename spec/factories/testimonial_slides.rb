FactoryBot.define do
  factory :testimonial_slide do
    image_url {Faker::Internet.url}
    caption {Faker::Lorem.sentence}
    is_live {true}
    testimonial
    sequence_number {1}
    trait :wip do
      is_live {false}
    end
  end
end