FactoryBot.define do
  factory :testimonial_slide do
    image_url {'https://www.domain.com/image.jpg'}
    caption {Faker::Lorem.sentence}
    is_live {true}
    testimonial
    sequence_number {1}
    trait :wip do
      is_live {false}
    end
  end
end