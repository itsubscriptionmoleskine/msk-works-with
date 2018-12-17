FactoryBot.define do
  sequence :offering_name do |n|
    Faker::Name.name + n.to_s
  end
  factory :offering do
    name {:offering_name}
    description {Faker::Lorem.sentence}
    shop_link {Faker::Internet.url}
    product_image {Faker::Internet.url}
    is_live {true}
    trait :wip do
      is_live {false}
    end
    trait :description_too_long do
      description {Faker::Lorem.sentence(word_count=250)}
    end
    after (:create) do |offering|
      a = build(:app)
      create :works_with, app: a, offering: offering
    end
  end
end