FactoryBot.define do
  sequence :product_name do |n|
    Faker::Name.name + n.to_s
  end
  factory :product do
    name {:product_name}
    description {Faker::Lorem.sentence}
    promo_text {Faker::Lorem.sentence}
    shop_link {Faker::Internet.url}
    product_image {Faker::Internet.url}
    is_live {true}
    trait :wip do
      is_live {false}
    end
    trait :promo_text_too_long do
      promo_text {Faker::Lorem.sentence(word_count=250)}
    end
    after (:create) do |product|
      a = build(:app)
      create :works_with, app: a, product: product
    end
  end
end