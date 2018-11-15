FactoryBot.define do
  sequence :testimonial_title do |n|
    Faker::Name.name + n.to_s
  end
  factory :testimonial do
    title {:testimonial_title}
    description {Faker::Lorem.sentence}
    is_live {true}
    trait :wip do
      is_live {false}
    end
  end
end